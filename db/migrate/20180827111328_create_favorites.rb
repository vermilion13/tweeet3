class CreateFavorites < ActiveRecord::Migration[5.1]

  def change
    rename_column :favorites, :blog_id, :tweeet_id
  end
end