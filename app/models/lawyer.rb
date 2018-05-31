class Lawyer < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_specialties_and_address,
    against: [ :specialties, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  has_many :appointments
  belongs_to :user
  validates :professional_email, presence: true

end
