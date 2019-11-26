class Bourbon < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  belongs_to :distillery

  accepts_nested_attributes_for :distillery

  validates :name, presence: true
  validates :kind, presence: true

  scope :grouped_ratings, -> {left_joins(:reviews).group(:id).order('avg(stars) desc')}

#write the scope method
#custom route
#controller method
#view 

  def self.alphabetical_order
    order(:name)
  end
end
