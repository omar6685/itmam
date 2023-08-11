class CreateActivityTables < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_tables do |t|
      t.string :activity
      t.boolean :active
      t.belongs_to :study, null: false, foreign_key: true

      t.timestamps
    end
  end
end
