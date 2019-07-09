class PomodorosController < ApplicationController


  def new
    @task = Pomodoro.new
  end

  def create
    @task = Pomodoro.new
    @task.user = current_user
    @task.save
  end

  def show
    time_frame = 25
    @task = Pomodoro.find(params[:id])
  end
end
