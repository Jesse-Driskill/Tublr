class DropPosts < ActiveRecord::Migration[5.2]
  def change
    drop_table :posts


    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.string :body
      t.string :type_of_post

      t.timestamps
    end

    add_index :posts, :id, unique: true
  end
end
