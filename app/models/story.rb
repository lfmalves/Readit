# frozen_string_literal: true

class Story < ApplicationRecord
  validates :name, :link, presence: true
end
