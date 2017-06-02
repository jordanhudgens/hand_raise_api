class HandRaisesController < ApplicationController
  before_action :set_hand_raise, only: [:show, :update, :destroy]

  def index
    @hand_raises = HandRaise.where("status = ?", params[:filter])

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
      params.require(:hand_raise).permit(:question, :body, :student_email, :student_name, :guide_title, :guide_id, :resolution, :ta_name, :ta_email, :status)
    end
end
