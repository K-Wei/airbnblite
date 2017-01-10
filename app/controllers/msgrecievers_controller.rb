class MsgrecieversController < ApplicationController
  def index
    @q = Msgreciever.ransack(params[:q])
    @msgrecievers = @q.result(:distinct => true).includes(:host, :guest, :messages).page(params[:page]).per(10)

    render("msgrecievers/index.html.erb")
  end

  def show
    @message = Message.new
    @msgreciever = Msgreciever.find(params[:id])

    render("msgrecievers/show.html.erb")
  end

  def new
    @msgreciever = Msgreciever.new

    render("msgrecievers/new.html.erb")
  end

  def create
    @msgreciever = Msgreciever.new

    @msgreciever.host_id = params[:host_id]
    @msgreciever.guest_id = params[:guest_id]

    save_status = @msgreciever.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/msgrecievers/new", "/create_msgreciever"
        redirect_to("/msgrecievers")
      else
        redirect_back(:fallback_location => "/", :notice => "Msgreciever created successfully.")
      end
    else
      render("msgrecievers/new.html.erb")
    end
  end

  def edit
    @msgreciever = Msgreciever.find(params[:id])

    render("msgrecievers/edit.html.erb")
  end

  def update
    @msgreciever = Msgreciever.find(params[:id])

    @msgreciever.host_id = params[:host_id]
    @msgreciever.guest_id = params[:guest_id]

    save_status = @msgreciever.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/msgrecievers/#{@msgreciever.id}/edit", "/update_msgreciever"
        redirect_to("/msgrecievers/#{@msgreciever.id}", :notice => "Msgreciever updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Msgreciever updated successfully.")
      end
    else
      render("msgrecievers/edit.html.erb")
    end
  end

  def destroy
    @msgreciever = Msgreciever.find(params[:id])

    @msgreciever.destroy

    if URI(request.referer).path == "/msgrecievers/#{@msgreciever.id}"
      redirect_to("/", :notice => "Msgreciever deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Msgreciever deleted.")
    end
  end
end
