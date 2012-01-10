class AddCustomercompanyToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :customercompany_id, :integer
  end
end
