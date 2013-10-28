class TrackersController < ApplicationController
  def new
    @tracker = Tracker.new
  end

  def index
  end
end
