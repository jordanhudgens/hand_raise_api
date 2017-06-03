class RemoveGuideIdFromHandRaises < ActiveRecord::Migration[5.1]
  def change
    remove_column :hand_raises, :guide_id, :integer
  end
end
