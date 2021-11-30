class Song < ApplicationRecord
  belongs_to :band
  has_many :song_files
end
