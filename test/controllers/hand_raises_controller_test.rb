require 'test_helper'

class HandRaisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hand_raise = hand_raises(:one)
  end

  test "should get index" do
    get hand_raises_url, as: :json
    assert_response :success
  end

  test "should create hand_raise" do
    assert_difference('HandRaise.count') do
      post hand_raises_url, params: { hand_raise: { body: @hand_raise.body, guide_id: @hand_raise.guide_id, guide_title: @hand_raise.guide_title, question: @hand_raise.question, resolution: @hand_raise.resolution, status: @hand_raise.status, student_email: @hand_raise.student_email, student_name: @hand_raise.student_name, ta_email: @hand_raise.ta_email, ta_name: @hand_raise.ta_name } }, as: :json
    end

    assert_response 201
  end

  test "should show hand_raise" do
    get hand_raise_url(@hand_raise), as: :json
    assert_response :success
  end

  test "should update hand_raise" do
    patch hand_raise_url(@hand_raise), params: { hand_raise: { body: @hand_raise.body, guide_id: @hand_raise.guide_id, guide_title: @hand_raise.guide_title, question: @hand_raise.question, resolution: @hand_raise.resolution, status: @hand_raise.status, student_email: @hand_raise.student_email, student_name: @hand_raise.student_name, ta_email: @hand_raise.ta_email, ta_name: @hand_raise.ta_name } }, as: :json
    assert_response 200
  end

  test "should destroy hand_raise" do
    assert_difference('HandRaise.count', -1) do
      delete hand_raise_url(@hand_raise), as: :json
    end

    assert_response 204
  end
end
