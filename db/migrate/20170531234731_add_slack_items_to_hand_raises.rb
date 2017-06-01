class AddSlackItemsToHandRaises < ActiveRecord::Migration[5.1]
  def change
    add_column :hand_raises, :ta_slack_username, :string
    add_column :hand_raises, :student_slack_username, :string
  end
end
