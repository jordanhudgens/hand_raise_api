class HandRaisesController < ApplicationController
  before_action :set_hand_raise, only: [:show, :update, :destroy]

  # GET /hand_raises
  def index
    @hand_raises = HandRaise.all

    render json: @hand_raises
  end

  # GET /hand_raises/1
  def show
    render json: @hand_raise
  end

  # POST /hand_raises
  def create
    @hand_raise = HandRaise.new(hand_raise_params)

    if @hand_raise.save
      render json: @hand_raise, status: :created, location: @hand_raise
    else
      render json: @hand_raise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hand_raises/1
  def update
    if @hand_raise.update(hand_raise_params)
      render json: @hand_raise
    else
      render json: @hand_raise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hand_raises/1
  def destroy
    @hand_raise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hand_raise
      @hand_raise = HandRaise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hand_raise_params
      params.require(:hand_raise).permit(:question, :body, :student_email, :student_name, :guide_title, :guide_id, :resolution, :ta_name, :ta_email, :status)
    end
end
