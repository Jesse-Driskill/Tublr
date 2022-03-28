class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :body, null: false
      


      t.timestamps
    end

    add_index :comments, :id, unique: true
  end
end
