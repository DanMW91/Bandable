class Song < ApplicationRecord
  belongs_to :band
  belongs_to :user
  has_many :song_files
end
