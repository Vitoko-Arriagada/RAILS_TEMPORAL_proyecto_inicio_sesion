class Usuario < ApplicationRecord
  validates :first_name, :last_name, :email, :age, presence: true
  validates :age, numericality: { less_than_or_equal_to: 150, greater_than_or_equal_to: 10 }
  validates :first_name, :last_name, length: { minimum: 2 }
end
