class AddPlayerMinimumToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :players_minimum, :integer, null: false, default: 2
  end
end
