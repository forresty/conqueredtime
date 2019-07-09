class JournalsController < ApplicationController
  before_action :authenticate_user!

  def index
    @journals = Journal.all
  end

  # def show
  #   @enties = Entry.all
  # end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)
    if @journal.save
      redirect_to journal_path(@journal)
    else
      render :new
    end
  end

  private

  def set_journal
    @journal = Journal.find(params[:id])
  end

  def journal_params
    params.require(:journal).permit(:title)
  end
end
