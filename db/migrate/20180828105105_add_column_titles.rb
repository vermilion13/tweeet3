class AddColumnTitles < ActiveRecord::Migration[5.1]
  def change
    add_column :tweeets, :user, :string
  end
end
