class CreateNitakTables < ActiveRecord::Migration[7.0]
  def change
    create_table :nitak_tables do |t|
      t.references :activity_table, null: false, foreign_key: true
      t.references :company_status, null: false, foreign_key: true
      t.decimal :fixed_value
      t.decimal :yearly_value

      t.timestamps
    end
  end
end
