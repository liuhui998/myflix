class VideosController < ApplicationController
  before_filter :authenticate_user!
  def index
    @videos = Video.all
    @categories = Category.includes(:videos).all
  end

  def show
    @video = Video.find(params[:id])
  end
  
  def search
    @results = Video.search_by_title(params[:search_term])
  end

end
