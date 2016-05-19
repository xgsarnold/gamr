class Game < ActiveRecord::Base
  scope :name_like, -> (name) { where("name ilike ?", name)}
end
