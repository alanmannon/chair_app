class ChairController < ApplicationController
  def index
    @chairs = Chair.all
    render "index.html.erb"
  end

  def show
    @chair = Chair.find(params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @chair = Chair.new(
      color: params[:color],
      weight: params[:weight],
      style: params[:style],
    )
    @chair.save
    redirect_to "/chair/#{@chair.id}"
  end

  def edit
    @chair = Chair.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @chair = Chair.find(params[:id])
    @chair.color = params[:color]
    @chair.weight = params[:weight]
    @chair.style = params[:style]
    @chair.image_url = params[:image_url]
    @chair.save
    redirect_to "/chair/#{@chair.id}"
  end
end
