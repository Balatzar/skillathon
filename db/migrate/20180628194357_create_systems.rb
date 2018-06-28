class CreateSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :systems do |t|
      t.string :name

      t.timestamps
    end

    create_table :releases do |t|
      t.belongs_to :system
      t.belongs_to :game

      t.timestamps
    end
  end
end
