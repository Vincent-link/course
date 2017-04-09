class Cou < ApplicationRecord

  has_many :lessons
  has_many :members, through: :lessons, source: :student
end
