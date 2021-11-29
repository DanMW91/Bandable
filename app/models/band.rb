class Band < ApplicationRecord
  has_one_attached :photo

  validates :bio, length: { maximum: 1000 }
  validates :name, :location, :bio, :current_member_count, presence: true

  has_many :messages
  has_many :band_members
  has_many :users, through: :band_members
end
