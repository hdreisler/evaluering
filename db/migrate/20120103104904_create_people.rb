class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :role
      t.boolean :inactive

      t.timestamps
    end
  end
end
