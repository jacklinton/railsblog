class RemoveAvatarUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :avatar, :binary
  end
end
