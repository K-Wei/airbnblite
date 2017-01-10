class ListingreviewsController < ApplicationController
  def index
    @q = Listingreview.ransack(params[:q])
    @listingreviews = @q.result(:distinct => true).includes(:guest, :listing, :booking).page(params[:page]).per(10)

    render("listingreviews/index.html.erb")
  end

  def show
    @listingreview = Listingreview.find(params[:id])

    render("listingreviews/show.html.erb")
  end

  def new
    @listingreview = Listingreview.new

    render("listingreviews/new.html.erb")
  end

  def create
    @listingreview = Listingreview.new

    @listingreview.booking_id = params[:booking_id]
    @listingreview.listing_id = params[:listing_id]
    @listingreview.review_title = params[:review_title]
    @listingreview.accuracy = params[:accuracy]
    @listingreview.communication = params[:communication]
    @listingreview.cleanliness = params[:cleanliness]
    @listingreview.location = params[:location]
    @listingreview.checkin = params[:checkin]
    @listingreview.value = params[:value]
    @listingreview.review_content = params[:review_content]
    @listingreview.photos = params[:photos]
    @listingreview.guest_id = params[:guest_id]

    save_status = @listingreview.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listingreviews/new", "/create_listingreview"
        redirect_to("/listingreviews")
      else
        redirect_back(:fallback_location => "/", :notice => "Listingreview created successfully.")
      end
    else
      render("listingreviews/new.html.erb")
    end
  end

  def edit
    @listingreview = Listingreview.find(params[:id])

    render("listingreviews/edit.html.erb")
  end

  def update
    @listingreview = Listingreview.find(params[:id])

    @listingreview.booking_id = params[:booking_id]
    @listingreview.listing_id = params[:listing_id]
    @listingreview.review_title = params[:review_title]
    @listingreview.accuracy = params[:accuracy]
    @listingreview.communication = params[:communication]
    @listingreview.cleanliness = params[:cleanliness]
    @listingreview.location = params[:location]
    @listingreview.checkin = params[:checkin]
    @listingreview.value = params[:value]
    @listingreview.review_content = params[:review_content]
    @listingreview.photos = params[:photos]
    @listingreview.guest_id = params[:guest_id]

    save_status = @listingreview.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/listingreviews/#{@listingreview.id}/edit", "/update_listingreview"
        redirect_to("/listingreviews/#{@listingreview.id}", :notice => "Listingreview updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Listingreview updated successfully.")
      end
    else
      render("listingreviews/edit.html.erb")
    end
  end

  def destroy
    @listingreview = Listingreview.find(params[:id])

    @listingreview.destroy

    if URI(request.referer).path == "/listingreviews/#{@listingreview.id}"
      redirect_to("/", :notice => "Listingreview deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Listingreview deleted.")
    end
  end
end
