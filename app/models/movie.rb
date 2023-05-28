# frozen_string_literal: true

class Movie
  class << self
    def items
      @items ||= []
    end

    def create!(**attributes)
      items << new(
        name: attributes['name'],
        date: attributes['date']
      )
    end

    def recent
      items
        .select { |movie| Time.zone.now >= movie.date }
        .sort_by(&:date)
        .reverse
        .take(1)
    end

    def latest(num)
      items
        .sort_by(&:date)
        .reverse
        .take(num)
    end

    def clear
      @items = []
    end

    alias all items
  end

  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name
  attribute :date, :date
end
