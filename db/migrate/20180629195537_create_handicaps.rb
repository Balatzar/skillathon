class CreateHandicaps < ActiveRecord::Migration[5.2]
  def change
    create_table :handicaps do |t|
      t.string :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
