class SongFile < ApplicationRecord
  belongs_to :song
  belongs_to :user
  has_one_attached :song_document
end
