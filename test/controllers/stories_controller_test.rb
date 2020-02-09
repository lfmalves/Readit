# frozen_string_literal: true

require 'test_helper'

class StoriesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get stories_url
    assert_response :success
  end

  test "should get new" do
    get new_story_path
    assert_response :success
    assert_template 'new'
    assert_not_nil assigns(:story)
  end

  test "new shows new form" do
    get new_story_path
    assert_select 'form div', count: 2
  end

  test 'adds a story' do 
    assert_difference "Story.count" do 
      post stories_path, params: {
        story: {
          name: 'test story',
          link: 'http://www.test.com/'
        }
      }
    end
  end
end
