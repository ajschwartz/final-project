class UsagesController < ApplicationController
  def index
    @usages = Usage.all

    render("usages/index.html.erb")
  end

  def show
    @usage = Usage.find(params[:id])

    render("usages/show.html.erb")
  end

  def new
    @usage = Usage.new

    render("usages/new.html.erb")
  end

  def create
    @usage = Usage.new

    @usage.giftcard_id = params[:giftcard_id]
    @usage.date = params[:date]
    @usage.purchase = params[:purchase]
    @usage.amount = params[:amount]

    save_status = @usage.save

    if save_status == true
      redirect_to("/usages/#{@usage.id}", :notice => "Usage created successfully.")
    else
      render("usages/new.html.erb")
    end
  end

  def edit
    @usage = Usage.find(params[:id])

    render("usages/edit.html.erb")
  end

  def update
    @usage = Usage.find(params[:id])

    @usage.giftcard_id = params[:giftcard_id]
    @usage.date = params[:date]
    @usage.purchase = params[:purchase]
    @usage.amount = params[:amount]

    save_status = @usage.save

    if save_status == true
      redirect_to("/usages/#{@usage.id}", :notice => "Usage updated successfully.")
    else
      render("usages/edit.html.erb")
    end
  end

  def destroy
    @usage = Usage.find(params[:id])

    @usage.destroy

    if URI(request.referer).path == "/usages/#{@usage.id}"
      redirect_to("/", :notice => "Usage deleted.")
    else
      redirect_to(:back, :notice => "Usage deleted.")
    end
  end
end
