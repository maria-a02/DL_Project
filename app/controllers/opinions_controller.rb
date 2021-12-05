class OpinionsController < ApplicationController

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
  end

  def edit
    @opinions = Opinion.all
  end

  def create
    @fairs = Fair.all
    @fair = Fair.all
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

  private
  def set_opinion
    @opinion = Opinion.find(params[:id])
  end
  
  def opinion_params
    params.require(:opinion).permit(:title, :opinion, :rating)
  end
end