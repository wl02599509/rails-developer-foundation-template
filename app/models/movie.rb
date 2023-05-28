# frozen_string_literal: true

class Movie
  include ActiveModel::Model
  include ActiveModel::Attributes

  def self.all
    ['1. SANKYO PRESENTS WALKURE FINAL LIVE TOUR 現場直播',
     '2. 小美人魚',
     '3. 玩命關頭X']
  end

  def self.recent
    '1. 小美人魚'
  end

  def self.latest
    '1. 變形金剛：萬獸崛起'
  end

  attribute :name
  attribute :datetime
end
