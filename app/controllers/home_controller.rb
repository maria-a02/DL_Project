class HomeController < ApplicationController
  def index
    @fairs = Fair.all
    @fair = Fair.new
  end
end
