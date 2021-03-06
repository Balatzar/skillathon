class CreateOwnedGames < ActiveRecord::Migration[5.2]
  def change
    create_table :owned_games do |t|
      t.belongs_to :game, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
