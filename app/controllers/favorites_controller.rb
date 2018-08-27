class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(tweeet_id: params[:tweeet_id])
    redirect_to tweeets_url, notice: "#{favorite.tweeet.user.name}さんのブログをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to tweeets_url, notice: "#{favorite.tweeet.user.name}さんのブログをお気に入り解除しました"
  end
end