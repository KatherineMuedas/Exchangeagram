class CommentsController < ApplicationController
  before_action :find_photo, only: [:new, :create]

  def create
    @comment = @photo.comments.new(comments_params)
    if @comment.save
      redirect_to @photo
    else
      redirect_to :back, notice: 'Comment was not deleted'
  end

  def destroy
    @comment.destroy
    redirect_to :back, notice: 'Comment was succesfully deleted'
  end

  private

  def comment_params
  end

  def find_photo
    @photo = Photo.find(params[:photo_id])
  end
end
