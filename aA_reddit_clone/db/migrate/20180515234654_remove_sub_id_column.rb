class RemoveSubIdColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column  :posts, :sub_id, :integer
    remove_index :posts, name: :sub_id 
  end
end
