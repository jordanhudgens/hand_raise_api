class AddHandRaiseIdAndGuideUrlToHandRaises < ActiveRecord::Migration[5.1]
  def change
    add_column :hand_raises, :hand_raise_id, :integer
    add_column :hand_raises, :guide_url, :string
  end
end
