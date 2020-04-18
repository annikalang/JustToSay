class ReceivedAppreciation < ApplicationRecord
  belongs_to :appreciation
  belongs_to :employee
end
