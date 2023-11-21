class Patient < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :insurance, inclusion: {in: ['Public', 'Private']}
end
