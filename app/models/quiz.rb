class Quiz < ActiveRecord::Base
  has_many :submissions
  belongs_to :teacher
end
