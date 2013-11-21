require 'test_helper'

class CategoryControllerTest < ActionController::TestCase
  test "should get design" do
    get :design
    assert_response :success
  end

  test "should get technology" do
    get :technology
    assert_response :success
  end

  test "should get business" do
    get :business
    assert_response :success
  end

  test "should get marketing" do
    get :marketing
    assert_response :success
  end

  test "should get soft_skills" do
    get :soft_skills
    assert_response :success
  end

  test "should get health_wellness" do
    get :health_wellness
    assert_response :success
  end

  test "should get miscelaneous" do
    get :miscelaneous
    assert_response :success
  end

end
