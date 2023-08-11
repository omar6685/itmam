class DropColorTablesAndNitakTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :nitak_tables
    drop_table :color_tables
  end
end
