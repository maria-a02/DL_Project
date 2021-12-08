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
    @opinion = Opinion.new(opinion_params.merge(user: current_user))
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
          format.html { redirect_to opinion_path, notice: 'La información se actualizó' }
      else
          format.html { redirect_to edit_opinion_path, notice: 'La información no se pudo actualizar' }
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
    params.require(:opinion).permit(:title, :comment, :rating, :user_id, :fair_id)
  end
end