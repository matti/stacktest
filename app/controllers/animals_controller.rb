class AnimalsController < ApplicationController
  
  def index
    @animals = Animal.find(:all)
  end
  
  def new
    @animal = Animal.new
  end
  
  
  def create
    @animal = Animal.new params[:animal]
    
    if @animal.save
      redirect_to root_url
    else
      render :action=>:new
    end
    
  end
  
end
