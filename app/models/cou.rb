class Cou < ApplicationRecord
  has_many :lessons
  has_many :students, through: :lessons, source: :student

  belongs_to :teacher
end
