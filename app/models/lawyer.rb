class Lawyer < ApplicationRecord
  has_many :appointments
  belongs_to :user

  validates :professional_email, presence: true
end
