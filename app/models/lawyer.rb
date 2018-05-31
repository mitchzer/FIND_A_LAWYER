class Lawyer < ApplicationRecord
  has_many :appointments
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :professional_email, presence: true
  belongs_to :specialty, optional: true
  validates :user_id, uniqueness: { scope: :user_id, message: "You already have a lawyer profile !" }
end
