class Band < ApplicationRecord
  has_many :messages
  has_many :users, through: :band_members
end
