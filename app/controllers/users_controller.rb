class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update]

    def new
      @user = User.new
    end

  def index
    redirect_to user_path(current_user.id)
  end

    def create
        @user = User.new(user_params)
        if @user.save
#            ContactMailer.contact_mail_y(@user).deliver
            redirect_to user_path(@user.id)
        else
          render 'new'
        end
    end

    def show
        @favorites_tweeets = @user.favorite_tweeets
    end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :image, :image_cache)
  end

  def set_user
    @user = User.find(params[:id])
  end


end