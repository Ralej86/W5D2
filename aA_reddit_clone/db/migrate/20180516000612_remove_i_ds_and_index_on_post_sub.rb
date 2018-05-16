class RemoveIDsAndIndexOnPostSub < ActiveRecord::Migration[5.1]
  def change
    remove_index :post_subs, name: "index_post_subs_on_post_id"
    remove_index :post_subs, name: "index_post_subs_on_sub_id"
    remove_column :post_subs, :sub_id, :integer  
    remove_column :post_subs, :post_id, :integer  
  
  end
  
end
