class EntriesController < ApplicationController
  before_action :set_entry, only: [:show]
  def index
    @journal = Journal.find(params[:journal_id])
    @entries = @journal.entries
    @entry = Entry.new
    @entry.milestones.build
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
    @entry.save
    redirect_back fallback_location: journal_entries_path(@entry.journal)
  end

  private

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:goal, milestones_attributes: [:title])
  end
end
