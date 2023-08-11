class AddBranchToStudies < ActiveRecord::Migration[7.0]
  def change
    add_column :studies, :branch, :string
  end
end
