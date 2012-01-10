class AddCompanyToPerson < ActiveRecord::Migration
  def change
    add_column :people, :company_id, :integer
  end
end
