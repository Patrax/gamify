class Tag < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2, maximum: 25 }
  has_many :game_tags
  has_many :games, through: :game_tags
end