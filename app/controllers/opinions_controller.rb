class OpinionsController < ApplicationController
before_action :authenticate_user! 
def index
    @opinions = current_user.opinions
    @opinion = Opinion.all
    @users = current_user
    @fair = Fair.find(params[:fair_id])
    @fairs = Fair.find(params[:fair_id])  
end

  def new
    @users = current_user
    @fairs = Fair.all
    @opinion = Opinion.new
  end

  def show
    @opinions = Opinion.all
    @opinion = Opinion.find(params[:id])
    @fairs = Fair.all
  end

  def edit
    @fairs = Fair.all
    @opinions = current_user.opinions
    @fair = Fair.find(params[:fair_id])
    @opinion = @fair.opinions.find(params[:id])
  end

  def create
    @fairs = Fair.all
    @fair = Fair.find(params[:fair_id])
    @opinion = @fair.opinions.create(opinion_params.merge(user: current_user))
    respond_to do |format|
      if @opinion.save
      OpinionMailer.with(opinion: @opinion).new_opinion_email.deliver_later
      format.html { redirect_to root_path, alert: '¡Se agregó tu comentario!' }
      else
      format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @opinion.update!(opinion_params)
          format.html { redirect_to root_path, alert: '¡La información se actualizó!' }
      else
          format.html { redirect_to edit_opinion_path, alert: 'La información no se pudo actualizar.' }
      end
    end
  end

  def destroy
    @fair = Fair.find(params[:fair_id])
    @opinion = @fair.opinions.find(params[:id])
    @opinion.destroy
    respond_to do |format|
    format.html { redirect_to root_path,  alert: '¡Se borró tu comentario!' }
    end
  end

  private
  def set_opinion
    @opinion = Opinions.find(params[:id])
  end
  
  def opinion_params
    params.require(:opinion).permit(:title, :comment, :rating, :user_id, :fair_id)
  end
end