class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name, index: true
      t.string :password
      t.string :password_digest
      t.string :password_confirmation
      t.binary :avatar
      t.text :quote
      t.text :comments
      t.boolean :admin
      t.string :email, index: true

      t.timestamps
    end
  end
end
