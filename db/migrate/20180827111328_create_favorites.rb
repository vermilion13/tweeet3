class CreateFavorites < ActiveRecord::Migration[5.1]

  def change
      create_table :favorites do |t|
    t.integer "user_id"
    t.integer "tweeet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  end
end