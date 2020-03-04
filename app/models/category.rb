class Category < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  
  has_many :post_categories
  has_many :posts, through: :post_categories
end
