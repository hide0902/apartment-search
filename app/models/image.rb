class Image < ApplicationRecord
  belongs_to :room, optional: true
end
