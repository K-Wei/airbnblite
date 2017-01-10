class ListingsController < ApplicationController
  def index
    @q = Listing.ransack(params[:q])
    @listings = @q.result(:distinct => true).includes(:host, :bookings, :listingreviews, :bookmarks).page(params[:page]).per(10)
    @location_hash = Gmaps4rails.build_markers(@listings.where.not(:address_latitude => nil)) do |listing, marker|
      marker.lat listing.address_latitude
      marker.lng listing.address_longitude
      marker.infowindow "<h5><a href='/listings/#{listing.id}'>#{listing.title}</a></h5><small>#{listing.address_formatted_address}</small>"
    end

    render("listings/index.html.erb")
  end

  def show
    @bookmark = Bookmark.new
    @listingreview = Listingreview.new
    @booking = Booking.new
    @listing = Listing.find(params[:id])

    render("listings/show.html.erb")
  end

  def new
    @listing = Listing.new

    render("listings/new.html.erb")
  end

  def create
    @listing = Listing.new

    @listing.title = params[:title]
    @listing.room_or_home = params[:room_or_home]
    @listing.photos = params[:photos]
    @listing.description = params[:description]
    @listing.bedrooms = params[:bedrooms]
    @listing.bathrooms = params[:bathrooms]
    @listing.max_occupancy = params[:max_occupancy]
    @listing.city = params[:city]
    @listing.neighborhood = params[:neighborhood]
    @listing.address = params[:address]
    @listing.policies = params[:policies]
    @listing.default_price = params[:default_price]
    @listing.host_id = params[:host_id]
    @listing.nights_available = params[:nights_available]

    save_status = @listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listings/new", "/create_listing"
        redirect_to("/listings")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing created successfully.")
      end
    else
      render("listings/new.html.erb")
    end
  end

  def edit
    @listing = Listing.find(params[:id])

    render("listings/edit.html.erb")
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.title = params[:title]
    @listing.room_or_home = params[:room_or_home]
    @listing.photos = params[:photos]
    @listing.description = params[:description]
    @listing.bedrooms = params[:bedrooms]
    @listing.bathrooms = params[:bathrooms]
    @listing.max_occupancy = params[:max_occupancy]
    @listing.city = params[:city]
    @listing.neighborhood = params[:neighborhood]
    @listing.address = params[:address]
    @listing.policies = params[:policies]
    @listing.default_price = params[:default_price]
    @listing.host_id = params[:host_id]
    @listing.nights_available = params[:nights_available]

    save_status = @listing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listings/#{@listing.id}/edit", "/update_listing"
        redirect_to("/listings/#{@listing.id}", :notice => "Listing updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Listing updated successfully.")
      end
    else
      render("listings/edit.html.erb")
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    @listing.destroy

    if URI(request.referer).path == "/listings/#{@listing.id}"
      redirect_to("/", :notice => "Listing deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Listing deleted.")
    end
  end
end
