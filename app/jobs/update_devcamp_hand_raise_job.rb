class UpdateDevcampHandRaiseJob < ApplicationJob
  queue_as :default

  def perform(hand_raise)
    UpdateDevcamp.patch(hand_raise)
  end
end
