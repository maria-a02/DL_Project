class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update ]
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    respond_to do |format|
        if @user.update!(user_params)
            format.js { render nothing: true, notice: 'La información se actualizó' }
        else
            format.html { redirect_to edit_user_path, notice: 'La información no se pudo actualizar' }
        end
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:id, :name, :photo, :email, :about)
    end
end
