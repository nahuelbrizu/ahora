class Favorite < ApplicationRecord
  belongs_to :recipe,  optional: true
end
