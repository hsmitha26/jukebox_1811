class Award < ApplicationRecord
  belongs_to :song

  enum name: ['Best New Song', 'Best Sad Song', 'Song of the Year']
end
