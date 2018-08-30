class AddColumnTweeets2nd < ActiveRecord::Migration[5.1]
  def change
    add_column :tweeets, :image, :string
  end
end
