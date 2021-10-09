require 'test_helper'

class JobOpportunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_opportunity = job_opportunities(:one)
  end

  test "should get index" do
    get job_opportunities_url, as: :json
    assert_response :success
  end

  test "should create job_opportunity" do
    assert_difference('JobOpportunity.count') do
      post job_opportunities_url, params: { job_opportunity: { company: @job_opportunity.company, link_to_position: @job_opportunity.link_to_position, notes: @job_opportunity.notes, position: @job_opportunity.position, status: @job_opportunity.status, user_id: @job_opportunity.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show job_opportunity" do
    get job_opportunity_url(@job_opportunity), as: :json
    assert_response :success
  end

  test "should update job_opportunity" do
    patch job_opportunity_url(@job_opportunity), params: { job_opportunity: { company: @job_opportunity.company, link_to_position: @job_opportunity.link_to_position, notes: @job_opportunity.notes, position: @job_opportunity.position, status: @job_opportunity.status, user_id: @job_opportunity.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy job_opportunity" do
    assert_difference('JobOpportunity.count', -1) do
      delete job_opportunity_url(@job_opportunity), as: :json
    end

    assert_response 204
  end
end
