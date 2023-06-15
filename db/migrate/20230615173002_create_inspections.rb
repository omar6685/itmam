class CreateInspections < ActiveRecord::Migration[7.0]
  def change
    create_table :inspections do |t|
      t.string :company_name
      t.integer :branchs_quantity
      t.references :company_status, null: false, foreign_key: true
      t.integer :saudi_employees
      t.integer :nonsaudi_employees
      t.boolean :salary_protection
      t.boolean :want_inspection
      t.string :personal_name
      t.integer :phone_number
      t.string :email
      t.text :explanation

      t.timestamps
    end
  end
end
