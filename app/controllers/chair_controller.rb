class ChairController < ApplicationController
  def index
    @chairs = Chair.all
    render "index.html.erb"
  end

  def show
    @chair = Chair.find(params[:id])
    render "show.html.erb"
  end
end
