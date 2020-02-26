class Building < ApplicationRecord
  has_many :rooms
  has_many :stations
end
