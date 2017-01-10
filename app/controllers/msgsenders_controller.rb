class MsgsendersController < ApplicationController
  def index
    @msgsenders = Msgsender.all

    render("msgsenders/index.html.erb")
  end

  def show
    @msgsender = Msgsender.find(params[:id])

    render("msgsenders/show.html.erb")
  end

  def new
    @msgsender = Msgsender.new

    render("msgsenders/new.html.erb")
  end

  def create
    @msgsender = Msgsender.new

    @msgsender.host_id = params[:host_id]
    @msgsender.guest_id = params[:guest_id]

    save_status = @msgsender.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/msgsenders/new", "/create_msgsender"
        redirect_to("/msgsenders")
      else
        redirect_back(:fallback_location => "/", :notice => "Msgsender created successfully.")
      end
    else
      render("msgsenders/new.html.erb")
    end
  end

  def edit
    @msgsender = Msgsender.find(params[:id])

    render("msgsenders/edit.html.erb")
  end

  def update
    @msgsender = Msgsender.find(params[:id])

    @msgsender.host_id = params[:host_id]
    @msgsender.guest_id = params[:guest_id]

    save_status = @msgsender.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/msgsenders/#{@msgsender.id}/edit", "/update_msgsender"
        redirect_to("/msgsenders/#{@msgsender.id}", :notice => "Msgsender updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Msgsender updated successfully.")
      end
    else
      render("msgsenders/edit.html.erb")
    end
  end

  def destroy
    @msgsender = Msgsender.find(params[:id])

    @msgsender.destroy

    if URI(request.referer).path == "/msgsenders/#{@msgsender.id}"
      redirect_to("/", :notice => "Msgsender deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Msgsender deleted.")
    end
  end
end
