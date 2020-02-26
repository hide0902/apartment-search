class Station < ApplicationRecord
  belongs_to :building, optional: true
  enum route: { '大阪環状線': 1}, _prefix: true
  enum station: { '天王寺駅': 1, '寺田町駅': 2, '桃谷駅': 3, '鶴橋駅': 4, '玉造駅': 5, '森ノ宮駅': 6, '大阪城公園駅': 7, '京橋駅': 8, '桜宮駅': 9, '天満駅': 10, '大阪駅': 11, '福島駅': 12, '野田駅': 13, '西九条駅': 14, '弁天町駅': 15, '大正駅': 16, '芦原橋駅': 17, '今宮駅': 18, '新今宮駅': 19}, _prefix: true
end
