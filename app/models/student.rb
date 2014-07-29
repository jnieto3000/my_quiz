class Student < ActiveRecord::Base
  has_many :notes
  has_many :submissions
end
