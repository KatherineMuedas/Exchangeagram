class PicturesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]
  
  def index
    @pictures = Picture.all
  end

  def new
    @categories = ["Cat" , "Memes" , "Food"]
    @picture = current_user.pictures.new
  end

  def create
    @picture = current_user.pictures.new(pictures_params)
 
    if @picture.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def show
    @picture = Picture.find(params[:id])
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
  end

  private
  
  def pictures_params
    params.require(:picture).permit(:title, :description, :category, :photo)
  end

end
