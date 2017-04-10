class Student < ApplicationRecord
  has_many :lessons
  has_many :cous, :through => :lessons, :source => :cou

  has_many :teacher_relationships
  has_many :teachers, :through => :teacher_relationships, :source => :teacher
end
