class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(attrs)
   attrs.values.each do |attr|
      unless attr[:name].blank?
        category = Category.find_or_create_by(attr)
        self.post_categories.build(category: category)
      end
    end
  end
end
