class CreateFacets < ActiveRecord::Migration[5.2]
  def change
    create_table :facets do |t|
      t.belongs_to :genre, foreign_key: true
      t.belongs_to :game, foreign_key: true

      t.timestamps
    end
  end
end
