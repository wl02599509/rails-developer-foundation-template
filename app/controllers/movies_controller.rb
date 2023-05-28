# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    @movies = Movie.recent if params[:search] == '最近 1'
    @movies = Movie.latest(1) if params[:search] == '最新 1'
    @movies = Movie.latest(3) if params[:search] == '最新 3'
  end
end
