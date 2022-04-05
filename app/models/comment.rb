class Comment < ApplicationRecord
  belongs_to :recipe, optional: true
end
