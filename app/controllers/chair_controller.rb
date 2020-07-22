class ChairController < ApplicationController
  def index
    @chairs = Chair.all
    render "chairs.index.erb"
  end
end
