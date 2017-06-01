class UpdateDevcampHandRaiseJob < ApplicationJob
  queue_as :default

  def perform(hand_raise)
    puts "I'm in the perform method"
  end
end
