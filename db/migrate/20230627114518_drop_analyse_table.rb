class DropAnalyseTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :analyses
  end
end
