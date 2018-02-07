class Portfolio < ApplicationRecord
  def self.by_position
    order("position ASC")
  end
end
