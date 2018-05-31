class Lawyer < ApplicationRecord
  has_many :appointments
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :professional_email, presence: true
  belongs_to :specialty, optional: true
end
