class Band < ApplicationRecord


  # has_many_attached :photos

  validates :bio, length: { maximum: 1000 }
  validates :name, :user_id, :location, :bio, :current_member_count, presence: true

  has_many :messages
  has_many :users, through: :band_members

end
