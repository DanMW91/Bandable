class Band < ApplicationRecord
  has_one_attached :photo

  validates :bio, length: { maximum: 1000 }
  validates :name, :location, :bio, :current_member_count, presence: true
  validates :genre, inclusion: { in:
    ['Rock', 'Jazz', 'Alternative', 'RnB', 'Hip-Hop', 'Heavy Metal', 'Country', 'Folk', 'Pop', 'Indie'] }

  has_many :messages
  has_many :band_members
  has_many :songs
  has_many :users, through: :band_members


  def user_is_member?(user)
    band_members.where(is_member: true).find_by(user: user).present?
  end

  def user_is_auditioning?(user)
    band_members.where(is_member: false).find_by(user: user).present?
  end

  def user_status(user)
    band_members.find_by(user: user).is_member? ? "member" : "auditioning"
  end

  def auditions?
    !band_members.where(is_audition: true).empty?
  end



  # pg search
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :location, :genre, :looking_for_instrument ],
    associated_against: {
      users: [:first_name, :last_name]
    },
    using: {
      tsearch: { prefix: true }
    }

end
