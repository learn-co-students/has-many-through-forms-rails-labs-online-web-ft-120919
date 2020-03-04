class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories

  def categories_attributes=(attributes)
    unless attributes.values[0][:name].empty?
      attributes.values.each do |attributes_hash|
        category = Category.find_or_create_by(name: attributes_hash[:name])
        self.categories << category unless self.categories.include? category
      end
    end
  end

end
