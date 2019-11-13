class Album < ApplicationRecord
  belongs_to :artist
  has_many :tracks, dependent: :destroy

  validates_presence_of :title, :artist
end
