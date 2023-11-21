class Education < ApplicationRecord
  belongs_to :doctor
  
  validates :university, presence: true
  validates :degree_name, presence: true
  validates :score, inclusion: { in: 50..100 }
end
