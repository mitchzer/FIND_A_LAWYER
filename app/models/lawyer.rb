class Lawyer < ApplicationRecord
  has_many :appointments
  belongs_to :user
  belongs_to :specialty, optional: true
  validates :user_id, uniqueness: { scope: :user_id, message: "You already have a lawyer profile !" }
end
