class Genre < ApplicationRecord
  has_many :tracks
  scope :filtrar, ->(name) { where("name LIKE ?", "%#{name}%") if name.present? }
  validates_presence_of :name
end
