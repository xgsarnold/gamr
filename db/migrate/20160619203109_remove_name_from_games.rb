class RemoveNameFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :name, :string
  end
end
