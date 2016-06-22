class Game < ActiveRecord::Base
  searchkick autocomplete: ['title']
end
