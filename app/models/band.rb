class Band < ApplicationRecord
  # has_many_attached :photos

  validates :bio, length: { maximum: 1000 }
  validates :name, :location, :bio, :current_member_count, presence: true

  has_many :messages
  has_many :band_members
  has_many :users, through: :band_members

  # pg search
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :location, :genre ],
    using: {
      tsearch: { prefix: true }
    }
end
