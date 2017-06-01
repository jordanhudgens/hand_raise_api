class UpdateDevcampHandRaiseJob < ApplicationJob
  queue_as :default

  def perform(hand_raise)
  end
end
