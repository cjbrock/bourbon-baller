class Bourbon < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  belongs_to :distillery

  accepts_nested_attributes_for :distillery
end
