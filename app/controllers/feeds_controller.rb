class FeedsController < ApplicationController
  before_action :set_feed, only: %i[show edit update destroy]

  def index
    @feeds = Feed.all
  end

  def show
  end

  def new
    @feed = Feed.new
  end

  def confirm
    @feed = Feed.new(feed_params)
    render :new if @feed.invalid?
  end

  def edit
  end

  def create
    @feed = Feed.new(feed_params)
    if params[:back]
      render :new
    else
      if @feed.save
        redirect_to feeds_path, notice: "Feed was successfully created."
      else
        render :new
      end
    end
  end

  def update
    if @feed.update(feed_params)
      redirect_to feeds_path, notice: "Feed was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @feed.destroy
    redirect_to feeds_path, notice: "Feed was successfully destroyed."
  end

  private

  def set_feed
    @feed = Feed.find(params[:id])
  end

  def feed_params
    params.require(:feed).permit(:picture, :image_cache, :content)
  end
end
