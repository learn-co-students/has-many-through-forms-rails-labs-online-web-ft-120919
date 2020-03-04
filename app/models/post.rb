class Post < ActiveRecord::Base
  has_many :post_categories
  #Gives us lots of methods, including:
  #post_categories
  #post_categories<<
  #post_categories.delete
  #post_category_ids=ids

  has_many :categories, through: :post_categories
  #accepts_nested_attributes_for :categories 

  has_many :comments
  #accepts_nested_attributes_for :comments
  
  has_many :users, through: :comments

  def categories_attributes=(categories_hashes)
    # raise categories_hashes.inspect (hash that is just like an array; each inner hash represents a category hash)
    # {"0"=>{"name"=>"Memoir"}, "1"=>{"name"=>"Comedy"}}

    #Create a category for each of the hashes inside categories_hashes

    categories_hashes.each do |i, category_attributes|
      if category_attributes[:name].present?
        #I need to create a category that is already associated with this post AND 
        #I need to make sure that this category doesn't already exist by name

        #category will now store a Category with this name (either a new one or one from the db)
        category = Category.find_or_create_by(name: category_attributes[:name])
        if !self.categories.include?(category)
          # Can do self.categories << category, but that's inefficient because it returns all categories
          # Instead, instantiate an instance of the join model, which is already associated to the post (!), and then just pass in the category
          self.post_categories.build(category: category)
        end 
      end
    end
  end

  def unique_commenters 
    self.comments.all.map{|comment| comment.user}.uniq 
  end


end
