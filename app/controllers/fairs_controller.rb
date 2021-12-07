class FairsController < ApplicationController
  def index
    @fairs = Fair.all
    @fair = Fair.new
  end

  def show
  end

  def filter
    @fairs = Fair.all
    @fairs = Fair.where(commune: params[:commune]) if params[:commune].present?
  end
end
