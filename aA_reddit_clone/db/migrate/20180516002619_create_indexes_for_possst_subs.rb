class CreateIndexesForPossstSubs < ActiveRecord::Migration[5.1]
  def change
    add_column :post_subs, :sub_id, :integer
    add_column :post_subs, :post_id, :integer
    add_index :post_subs, :sub_id
    add_index :post_subs, :post_id
  end
end
