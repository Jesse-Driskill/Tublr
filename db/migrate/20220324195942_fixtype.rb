class Fixtype < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :type
    add_column :posts, :type_of_post, :string
  end
end
