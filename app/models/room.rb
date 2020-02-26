class Room < ApplicationRecord
  belongs_to :building, optional: true
  has_many :images
  enum plan: { 'ワンルーム': 1, '1K': 2, '1DK': 3, '1LDK': 4, '2K': 5, '2DK': 6, '2LDK': 7, '3K': 8, '3DK': 9, '3LDK': 10, '4K': 11, '4DK': 12, '4LDK': 13, '5K': 14, '5DK': 15, '5LDK': 16}, _prefix: true
end
