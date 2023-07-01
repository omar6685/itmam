class CreateStudies < ActiveRecord::Migration[7.0]
  def change
    create_table :studies do |t|
      t.references :company_size, null: false, foreign_key: true
      t.integer :foreigner
      t.integer :saudi
      t.integer :ajier
      t.integer :special_foreigner
      t.integer :special_saudis
      t.decimal :localization_rate
      t.integer :saudi_four
      t.integer :saudi_three_four
      t.integer :saudi_three
      t.integer :visa
      t.integer :saudi_disable
      t.boolean :adaptation
      t.integer :saudi_jailed
      t.integer :saudi_student
      t.integer :saudi_online
      t.integer :saudi_player
      t.integer :saudi_loan_player
      t.integer :foreigner_like_saudi
      t.integer :foreigner_like_foreigner
      t.integer :specialy_foreigner
      t.integer :tribe_saudi
      t.integer :gulf_citizen
      t.integer :owner
      t.integer :red_week
      t.integer :uncounted_saudi

      t.timestamps
    end
  end
end
