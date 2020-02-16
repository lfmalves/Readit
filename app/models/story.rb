# frozen_string_literal: true

class Story < ApplicationRecord
  validates :name, :link, presence: true
  has_many :votes do 
    order('id DESC').limit(3)
  end

  def to_param
    "#{id}-#{name.gsub(/\W/, '-').downcase}"
  end
end
