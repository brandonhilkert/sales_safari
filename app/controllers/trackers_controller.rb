class TrackersController < ApplicationController
  def new
    @tracker = Tracker.new
  end

  def create
    @t = Tracker.create!(tracker_params)
    redirect_to @t
  end

  def show
  end

  private

  def tracker_params
    params.require(:tracker).permit(:name)
  end
end
