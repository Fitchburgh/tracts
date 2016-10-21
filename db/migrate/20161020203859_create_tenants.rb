class CreateTenants < ActiveRecord::Migration[5.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :address
      t.boolean :student
      t.string :employer
      t.boolean :down_pay
      t.string :phone
      t.string :emer_contact
      t.string :notes

      t.timestamps
    end
  end
end
