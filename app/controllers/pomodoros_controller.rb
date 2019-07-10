class PomodorosController < ApplicationController
  def new
    @pomodoro = Pomodoro.new
    @milestone = Milestone.find(params[:milestone_id])
  end

  def create
    @milestone = Milestone.find(params[:milestone_id])
    @pomodoro = Pomodoro.new
    @pomodoro.milestone = @milestone
    @pomodoro.save!

    # redirect_to pomodoro_path(@pomodoro)
    redirect_to @pomodoro
  end

  def show
    # time_frame = 25
    @duration = 25.minutes
    @pomodoro = Pomodoro.find(params[:id])

    @remaining_seconds = (@pomodoro.created_at + @duration - Time.now).to_i

    mins = @remaining_seconds / 60
    seconds = @remaining_seconds % 60

    @remaining = "#{mins}min #{seconds}sec"
  end
end
