class CreateVariables < ActiveRecord::Migration[5.2]
  def change
    create_table :variables do |t|
      t.integer :variable_type
      t.integer :min
      t.integer :max
      t.belongs_to :dictionary, foreign_key: true
      t.belongs_to :handicap, foreign_key: true

      t.timestamps
    end
  end
end
