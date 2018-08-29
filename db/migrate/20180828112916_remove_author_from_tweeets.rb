class RemoveAuthorFromTweeets < ActiveRecord::Migration[5.1]
  def change
    remove_column :tweeets, :user, :string
  end
end
