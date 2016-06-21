class Game < ActiveRecord::Base
  searchkick autocomplete: ['name']
end
