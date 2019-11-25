class Review < ApplicationRecord
  belongs_to :bourbon
  belongs_to :user
end
