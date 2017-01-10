class HostsController < ApplicationController
  def index
    @hosts = Host.all

    render("hosts/index.html.erb")
  end

  def show
    @host = Host.find(params[:id])

    render("hosts/show.html.erb")
  end

  def new
    @host = Host.new

    render("hosts/new.html.erb")
  end

  def create
    @host = Host.new

    @host.user_id = params[:user_id]

    save_status = @host.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/hosts/new", "/create_host"
        redirect_to("/hosts")
      else
        redirect_back(:fallback_location => "/", :notice => "Host created successfully.")
      end
    else
      render("hosts/new.html.erb")
    end
  end

  def edit
    @host = Host.find(params[:id])

    render("hosts/edit.html.erb")
  end

  def update
    @host = Host.find(params[:id])

    @host.user_id = params[:user_id]

    save_status = @host.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/hosts/#{@host.id}/edit", "/update_host"
        redirect_to("/hosts/#{@host.id}", :notice => "Host updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Host updated successfully.")
      end
    else
      render("hosts/edit.html.erb")
    end
  end

  def destroy
    @host = Host.find(params[:id])

    @host.destroy

    if URI(request.referer).path == "/hosts/#{@host.id}"
      redirect_to("/", :notice => "Host deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Host deleted.")
    end
  end
end
