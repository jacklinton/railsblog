class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :user_id, index: true
      t.text :body
      t.binary :data

      t.timestamps
    end
  end
end
