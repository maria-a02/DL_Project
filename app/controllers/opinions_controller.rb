class OpinionsController < ApplicationController
before_action :set_opinion, only: %i[ show edit update destroy ]
  def index
    @opinions = Opinion.all
  end
  
  def new
    @users = User.all
    @fairs = Fair.all
    @opinion = Opinion.new
  end

  def show
    @opinion = Opinion.find(params[:id])
    @opinions = Opinion.all
  end

  def edit
    @fairs = Fair.all
    @opinions = Opinion.all
    @opinion = Opinion.find(params[:id])
  end

  def create
    @fairs = Fair.all
    @fair = Fair.all
    @opinion.user_id = current_user.id
    @opinion = Opinion.new(opinion_params)
    respond_to do |format|
      if @opinion.save
      format.html { redirect_to @opinion, notice: 'Se agregó tu comentario.' }
      else
      format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @opinion.update!(opinion_params)
        format.html {redirect_to opinions_path}
      end
    end
  end

  def destroy
    @opinion.destroy
    respond_to do |format|
      format.html { redirect_to root_path}
      format.json { head :no_content }
    end
  end

  private
  def set_opinion
    @opinion = Opinion.find(params[:id])
  end
  
  def opinion_params
    params.require(:opinion).permit(:title, :opinion, :rating, :user_id, :fair_id)
  end
end