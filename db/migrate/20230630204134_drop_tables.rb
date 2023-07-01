class DropTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :nitak_tables
    drop_table :activity_tables
    drop_table :studies
    drop_table :company_sizes
  end
end
