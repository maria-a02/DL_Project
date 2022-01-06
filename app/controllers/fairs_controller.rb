class FairsController < ApplicationController
before_action :set_fair, only: %i[ show edit update destroy ]
before_action :authenticate_user! 
  def index
    @fairs = Fair.all.order("commune ASC")
    @fair = Fair.new
  end

  def show
    @fair = Fair.find(params[:id])
    @opinions = @fair.opinions
    @fairs = Fair.find(params[:id])
    @opinion = Opinion.new
  end

  def filter
    @fairs = Fair.where(commune: params[:commune]) if params[:commune].present?
  end

  private
  def set_fair
    @fair = Fair.find(params[:id])
  end
end
