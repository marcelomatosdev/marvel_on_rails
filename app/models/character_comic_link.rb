class CharacterComicLink < ApplicationRecord
  belongs_to :hero
  belongs_to :comic
end
