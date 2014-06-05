class FlowersController < ApplicationController

  def index
    @flower = Flower.new
    @flowers = Flower.all
  end

  def create
    @flower = Flower.create(flower_params)
    if @flower.save
      redirect_to flowers_path
    else
      render :index
    end
  end

  private
  def flower_params
    params.require(:flower).permit(:name, :color)
  end
end