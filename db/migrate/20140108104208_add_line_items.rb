class AddLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
       t.belongs_to :order
       t.belongs_to :item

       t.timestamps
     end
     add_index :line_items, :order_id
     add_index :line_items, :item_id
  end
end
