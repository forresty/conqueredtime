class EntriesController < ApplicationController
  before_action :set_entry, only: [:show]
  def index
    @journal = Journal.find(params[:journal_id])
    @entries = @journal.entries
    @milestone = Milestone.new
    @entry = Entry.new
  end

  def show
    @entry = Entry.find(params[:id])
    @milestones = @entry.milestones
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
    redirect_to :back
  end

  private

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:goal)
  end
end
