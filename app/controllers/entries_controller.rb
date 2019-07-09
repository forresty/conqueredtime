class EntriesController < ApplicationController
  before_action :set_entry, only: [:show]
  def index
    @entries = Entry.all
  end

  def show
    @milestones = Milestone.all
  end

  def new
    @journal = Journal.find(params[:id])
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.journal = Journal.find(params[:journal_id])
    @entry.milestone = Milestone.find(params[:milestone][:entry_id])
    @entry.save
    redirect_to entry_path(@entry)
  end

  private

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:goal)
  end
end
