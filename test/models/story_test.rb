# frozen_string_literal: true

require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  test "is not valid without a name" do 
    s = Story.create(name: nil, link: 'http://www.noix.com')
    assert s.errors[:name].any?
    refute s.valid?
  end
end
