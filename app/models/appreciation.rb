class Appreciation < ApplicationRecord
  belongs_to :employee
  belongs_to :employee, through: :appreceations_reception
  has_one :proven_value
end
