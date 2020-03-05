class Room < ApplicationRecord
  belongs_to :building, optional: true
  has_many :images
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  enum plan: { 'ワンルーム': 1, '1K': 2, '1DK': 3, '1LDK': 4, '2K': 5, '2DK': 6, '2LDK': 7, '3K': 8, '3DK': 9, '3LDK': 10, '4K': 11, '4DK': 12, '4LDK': 13, '5K': 14, '5DK': 15, '5LDK': 16}, _prefix: true
  enum bath: { 'UB': 0, 'バストイレ別': 1}, _prefix: true
  enum washroom: { '室外': 0, '室内洗濯置場': 1}, _prefix: true
  enum washing: { '浴室内': 0,'洗面所独立': 1}, _prefix: true
  enum air: { 'なし': 0,'あり': 1}, _prefix: true
end
