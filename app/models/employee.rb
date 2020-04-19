class Employee < ApplicationRecord
  has_many :appreciations
  has_many :appreciations, through: :sppreciation_receptions

  def profile

  end

end
