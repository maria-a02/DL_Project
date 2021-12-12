class FairsController < ApplicationController
  def index
    @fairs = Fair.all.order("commune ASC")
    @fair = Fair.new
  end

  def show
    @fair = Fair.find(params[:id])
  end

  def filter
    @fairs = Fair.all
    @fairs = Fair.where(commune: params[:commune]) if params[:commune].present?
  end
end
