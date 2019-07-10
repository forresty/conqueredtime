class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_before_action :verify_authenticity_token

  def home
    @journal = Journal.new
  end
end
