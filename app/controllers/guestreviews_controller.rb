class GuestreviewsController < ApplicationController
  def index
    @guestreviews = Guestreview.all

    render("guestreviews/index.html.erb")
  end

  def show
    @guestreview = Guestreview.find(params[:id])

    render("guestreviews/show.html.erb")
  end

  def new
    @guestreview = Guestreview.new

    render("guestreviews/new.html.erb")
  end

  def create
    @guestreview = Guestreview.new

    @guestreview.host_id = params[:host_id]
    @guestreview.guest_id = params[:guest_id]
    @guestreview.overall_rating = params[:overall_rating]
    @guestreview.booking_id = params[:booking_id]
    @guestreview.review_content = params[:review_content]
    @guestreview.photos = params[:photos]

    save_status = @guestreview.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/guestreviews/new", "/create_guestreview"
        redirect_to("/guestreviews")
      else
        redirect_back(:fallback_location => "/", :notice => "Guestreview created successfully.")
      end
    else
      render("guestreviews/new.html.erb")
    end
  end

  def edit
    @guestreview = Guestreview.find(params[:id])

    render("guestreviews/edit.html.erb")
  end

  def update
    @guestreview = Guestreview.find(params[:id])

    @guestreview.host_id = params[:host_id]
    @guestreview.guest_id = params[:guest_id]
    @guestreview.overall_rating = params[:overall_rating]
    @guestreview.booking_id = params[:booking_id]
    @guestreview.review_content = params[:review_content]
    @guestreview.photos = params[:photos]

    save_status = @guestreview.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/guestreviews/#{@guestreview.id}/edit", "/update_guestreview"
        redirect_to("/guestreviews/#{@guestreview.id}", :notice => "Guestreview updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Guestreview updated successfully.")
      end
    else
      render("guestreviews/edit.html.erb")
    end
  end

  def destroy
    @guestreview = Guestreview.find(params[:id])

    @guestreview.destroy

    if URI(request.referer).path == "/guestreviews/#{@guestreview.id}"
      redirect_to("/", :notice => "Guestreview deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Guestreview deleted.")
    end
  end
end
