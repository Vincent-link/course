class Student < ApplicationRecord

  has_many :lessons
  has_many :participated_cous, :through => :lessons, :source => :cou
end
