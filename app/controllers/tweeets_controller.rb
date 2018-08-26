class TweeetsController < ApplicationController
  
  before_action :set_tweeet, only: [:show, :edit, :update, :destroy]
  before_action :current_user, only: [:new, :edit, :show, :destroy]

  
  def index
    @tweeets = Tweeet.all
  end

  def new
    if params[:back]
      @tweeet = Tweeet.new(tweeet_params)
    else
      @tweeet = Tweeet.new
    end
  end

  def create
    @tweeet = Tweeet.new(tweeet_params)
    if @tweeet.save
      redirect_to tweeets_path, notice: "記事を登録しました。"
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tweeet.update(tweeet_params)
      redirect_to tweeets_path, notice: "記事を編集しました。"
    else
      render 'edit'
    end
  end

  def destroy
    @tweeet.destroy
    redirect_to tweeets_path, notice:"記事を削除しました。"
  end

  def confirm
    @tweeet = Tweeet.new(tweeet_params)
    render :new if @tweeet.invalid?
  end

  def top
    render :top
  end


  private

  def tweeet_params
    params.require(:tweeet).permit(:content)
  end

  def set_tweeet
    @tweeet = Tweeet.find(params[:id])
  end

  def current_user
    @current_user ||=  redirect_to new_session_path
    flash[:notice] = 'ログインしてね！'
  end

end