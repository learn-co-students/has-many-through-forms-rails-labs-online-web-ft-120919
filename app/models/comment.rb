class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    user_attributes.values.each do |user_attrs|
      if !user_attrs.empty?
        user = User.find_or_create_by(username: user_attrs)
        user.comments << self
      end
    end
  end

end
