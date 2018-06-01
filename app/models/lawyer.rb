class Lawyer < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_specialties_and_address,
    against: [ :specialties, :address ],
    associated_against: {
      specialty: [ :name ],
      user: [ :first_name ]
    },
    using: {
      tsearch: { prefix: true,
        any_word: true
       } # <-- now `superman batm` will return something!
    }

  has_many :appointments
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :professional_email, presence: true
  belongs_to :specialty, optional: true

  validates :user_id, uniqueness: { scope: :user_id, message: "You already have a lawyer profile !" }

  mount_uploader :photo, PhotoUploader

end
