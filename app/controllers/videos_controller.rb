class VideosController < ApplicationController
  def index
    @videos = Video.all
    @categories = Category.includes(:videos).all
  end

  def show
    @video = Video.find(params[:id])
  end
end
