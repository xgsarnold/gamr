class CreateTwitches < ActiveRecord::Migration
  def change
    create_table :twitches do |t|

      t.timestamps null: false
    end
  end
end
