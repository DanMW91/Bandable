class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:spotify]

  # user has the ability to join many bands and only has the ability to upload
  # one photo - the avatar
  # has_one_attached :photo
  # has_many :instruments, through: :user_instruments
  has_many :genres, through: :user_genres
  validates :first_name, :last_name, :location, :bio, presence: true
  validates :email, confirmation: true, uniqueness: true
  validates :first_name, :last_name, length: { maximum: 16 }
  validates :bio, length: { maximum: 1000 }
  # validates :instruments, inclusion: { in: %w[Guitar Drums Piano Bass Vocals Violin Cello Flute] }
  validates :genre, inclusion: { in:
    ['Rock', 'Jazz', 'RnB', 'Hip-Hop', 'Heavy Metal', 'Country', 'Folk', 'Pop', 'Indie'] }


  has_many :band_members
  has_many :bands, through: :band_members
  serialize :spotify_hash

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.avatar = auth.info.image
      user.username = auth.info.nickname
      user.spotify_hash = RSpotify::User.new(auth).to_hash
    end
  end

end
