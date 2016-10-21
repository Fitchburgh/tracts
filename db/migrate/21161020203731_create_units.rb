class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.references :tenant, index: true, foreign_key: true
      t.references :manager, index: true, foreign_key: true
      t.references :owner, index: true, foreign_key: true
      t.string :name
      t.string :address
      t.integer :open_tickets, null: false, default: 0
      t.string :tenant_signatory
      t.string :other_tenants
      t.string :notes

      t.timestamps
    end
  end
end
