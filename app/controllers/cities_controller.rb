class CitiesController < ApplicationController
  
  def index
    @cities = City.all
  end
  def show
    @city = City.find(params[:id])
  end

  def edit
  end

  def new
    @city = City.new
  end

  def update
  end

  def create
  end

  def destroy
  end


end
