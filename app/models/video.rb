class Video < ApplicationRecord
  belongs_to :recipe, optional: true
end
