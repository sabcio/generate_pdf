class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :payer_name
      t.text :address
      t.string :tax_id
      t.string :country
      t.string :email

      t.timestamps
    end
  end
end
