# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = ['1. SANKYO PRESENTS WALKURE FINAL LIVE TOUR 現場直播',
               '2. 小美人魚',
               '3. 玩命關頭X']
  end

  def search
    @resoult = '1. 小美人魚'
  end
end
