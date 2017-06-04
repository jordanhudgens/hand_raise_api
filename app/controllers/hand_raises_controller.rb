class HandRaisesController < ApplicationController
  before_action :set_hand_raise, only: [:show, :update, :destroy]
  before_action :authenticate_api_request

  def index
    @hand_raises = HandRaise.where("status = ?", params[:filter]).limit(20)

    render json: @hand_raises
  end

  def show
    render json: @hand_raise
  end

  def create
    @hand_raise = HandRaise.new(hand_raise_params)

    if @hand_raise.save
      render json: @hand_raise, status: :created, location: @hand_raise
    else
      render json: @hand_raise.errors, status: :unprocessable_entity
    end
  end

  def update
    if @hand_raise.update(hand_raise_params)
      render json: @hand_raise
    else
      render json: @hand_raise.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @hand_raise.destroy
  end

  private
    def set_hand_raise
      @hand_raise = HandRaise.find(params[:id])
    end

    def hand_raise_params
      params.require(:hand_raise).permit(
        :hand_raise_id,
        :question,
        :body,
        :student_email,
        :student_name,
        :guide_title,
        :guide_url,
        :student_slack_username,
        :resolution,
        :ta_name,
        :ta_email,
        :status
      )
    end

    def authenticate_api_request
      authenticate_or_request_with_http_basic do |source_app, api_key|
        api_client = ApiClient.find_by_source_app(source_app)
        api_client && api_client.api_key == api_key
      end
    end
end
