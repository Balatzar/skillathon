class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.belongs_to :event_type, foreign_key: true
      t.belongs_to :game, foreign_key: true

      t.timestamps
    end
  end
end
