class Band < ApplicationRecord
  # has_many_attached :photos

  validates :bio, length: { maximum: 1000 }
  validates :name, :location, :bio, :current_member_count, presence: true
  validates :genre, inclusion: { in:
    ['Rock', 'Jazz', 'Alternative', 'RnB', 'Hip-Hop', 'Heavy Metal', 'Country', 'Folk', 'Pop', 'Indie'] }

  has_many :messages
  has_many :band_members
  has_many :users, through: :band_members
end
