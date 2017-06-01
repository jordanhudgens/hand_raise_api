class UpdateDevcampHandRaiseJob < ApplicationJob
  queue_as :default

  def perform(hand_raise)
    UpdateDevcamp.patch(hand_raise)
  end

  def perform_two
    puts "asdfasdfasfdasfasdfasdasdasdfasda"
  end
end
