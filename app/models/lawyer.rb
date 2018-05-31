class Lawyer < ApplicationRecord
  has_many :appointments
  belongs_to :user
  belongs_to :specialty, optional: true
end
