class Anime < ApplicationRecord
  validates :name, :age, presence: true
end
