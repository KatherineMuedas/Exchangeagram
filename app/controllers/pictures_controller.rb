class PicturesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]
  
  def index
    @pictures = Picture.all
  end

  def cat_index
    @pictures = Picture.where(category: "Cat" )
  end

  def memes_index
    @pictures = Picture.where(category: "Memes" )
  end

  def food_index
    @pictures = Picture.where(category: "Food" )
  end

  def new
    @categories = ["Cat" , "Memes" , "Food"]
    @picture = current_user.pictures.new
  end

  def create
    @categories = ["Cat" , "Memes" , "Food"]
    @picture = current_user.pictures.new(pictures_params)
 
    if @picture.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def show
    @picture = Picture.find(params[:id])
    @comment = @picture.comments.build
    @comments = @picture.comments.all
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to root_url
  end

  private
  
  def pictures_params
    params.require(:picture).permit(:title, :description, :category, :photo)
  end

end
