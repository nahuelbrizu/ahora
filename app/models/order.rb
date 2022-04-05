class Order < ApplicationRecord
  belongs_to :recipe, optional: true
end
