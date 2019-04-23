require 'test_helper'

class AdJobListingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ad_job_listings_index_url
    assert_response :success
  end

  test "should get create" do
    get ad_job_listings_create_url
    assert_response :success
  end

  test "should get show" do
    get ad_job_listings_show_url
    assert_response :success
  end

  test "should get update" do
    get ad_job_listings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ad_job_listings_destroy_url
    assert_response :success
  end

  test "should get new" do
    get ad_job_listings_new_url
    assert_response :success
  end

  test "should get edit" do
    get ad_job_listings_edit_url
    assert_response :success
  end

end
