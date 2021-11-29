class FairsController < ApplicationController
  def index
    @fairs = Fair.all
    @fair = Fair.new
  end

  def show
  end
end
