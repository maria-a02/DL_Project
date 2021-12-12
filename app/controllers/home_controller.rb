class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @fairs = Fair.all
    @fair = Fair.new
  end
end
