class ChangeSpecialForeignerDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :studies, :specialy_foreigner, :decimal, precision: 10, scale: 2
  end
end
