class AddColumnsToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :card_number, :text, default: ''
    add_column :orders, :exp_date, :text, default: ''
    add_column :orders, :routing_number, :text, default: ''
    add_column :orders, :account_number, :text, default: ''
    add_column :orders, :po_number, :text, default: ''
    add_column :orders, :ship_date, :text, default: ''

  end
end
