require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get projects" do
    get :projects
    assert_response :success
  end

  test "should get testimonials" do
    get :testimonials
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get partners" do
    get :partners
    assert_response :success
  end

end
