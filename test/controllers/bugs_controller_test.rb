require 'test_helper'

class BugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bug = bugs(:one)
  end

  test "should demonstrate bug" do
    params = { data: {"maybe_a_bug"=>"true"} }
    post bugs_url, params: params, headers: { "Content-Type" => "application/vnd.api+json" }

    assert_equal params[:data], request.params[:data]

    assert_response 201
  end

  test "should demonstrate no-bug for comparison" do
    params = { data: {"maybe_a_bug"=>"true"} }
    post bugs_url, params: params

    assert_equal params[:data], request.params[:data]

    assert_response 201
  end
end
