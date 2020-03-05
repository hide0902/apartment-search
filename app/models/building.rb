class Building < ApplicationRecord
  has_many :rooms
  has_many :stations
  enum lock: { 'なし': 0, 'あり': 1}, _prefix: true
  enum net: { '有料': 0,'無料': 1}, _prefix: true
  enum pets: { '不可': 0,'可': 1}, _prefix: true
  enum parking: { 'なし': 0, 'あり': 1}, _prefix: true
  enum bike: { 'なし': 0,'あり': 1}, _prefix: true
end
