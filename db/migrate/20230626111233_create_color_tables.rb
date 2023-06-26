class CreateColorTables < ActiveRecord::Migration[7.0]
  def change
    create_table :color_tables do |t|
      t.string :color

      t.timestamps
    end
  end
end
