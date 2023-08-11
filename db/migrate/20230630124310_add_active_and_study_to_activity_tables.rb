class AddActiveAndStudyToActivityTables < ActiveRecord::Migration[7.0]
  def change
    add_column :activity_tables, :active, :boolean
    add_reference :activity_tables, :study, null: false, foreign_key: true
  end
end
