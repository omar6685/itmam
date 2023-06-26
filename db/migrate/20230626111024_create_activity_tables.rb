class CreateActivityTables < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_tables do |t|
      t.string :activitiy

      t.timestamps
    end
  end
end
