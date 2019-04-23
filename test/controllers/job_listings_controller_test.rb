require 'test_helper'

class JobListingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_listings_index_url
    assert_response :success
  end

  test "should get create" do
    get job_listings_create_url
    assert_response :success
  end

  test "should get show" do
    get job_listings_show_url
    assert_response :success
  end

end
