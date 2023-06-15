class CreateCompanyStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :company_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
