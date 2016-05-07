class CreateGiantBombs < ActiveRecord::Migration
  def change
    create_table :giant_bombs do |t|

      t.timestamps null: false
    end
  end
end
