# frozen_string_literal: true

require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  test 'creates vote' do
    assert_difference 'stories(:two).votes.count' do
      post story_votes_path(stories(:two))
    end
  end

  test 'create vote with ajax' do
    post story_votes_path(stories(:two)), xhr: true
    assert_response :success
  end
end
