class CreateCustomercompanies < ActiveRecord::Migration
  def change
    create_table :customercompanies do |t|
      t.string :name
      t.boolean :inactive

      t.timestamps
    end
  end
end
