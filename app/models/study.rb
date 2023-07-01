class Study < ApplicationRecord
  belongs_to :company_size
  has_many :activity_tables, dependent: :destroy, inverse_of: :study
  accepts_nested_attributes_for :activity_tables, allow_destroy: :true, reject_if: :all_blank
end
