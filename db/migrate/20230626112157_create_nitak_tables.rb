class CreateNitakTables < ActiveRecord::Migration[7.0]
  def change
    create_table :nitak_tables do |t|
      t.references :activity_table, null: false, foreign_key: true
      t.references :color_table, null: false, foreign_key: true
      t.float :fixed_value
      t.float :yearly_value

      t.timestamps
    end
  end
end
