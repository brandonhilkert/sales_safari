class SubjectsController < ApplicationController
  before_filter :find_tracker

  def create
    @tracker.subjects.create(subject_params)
    redirect_to @tracker
  end

  def vote
    s = @tracker.subjects.find(params[:id])
    s.increment(:votes)
    redirect_to @tracker
  end

  private

  def find_tracker
    @tracker = Tracker.find_by_uniq_id(params[:tracker_id])
  end

  def subject_params
    params.require(:subject).permit(:name)
  end
end
