class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user

  def user_name
    "#{self.user.username}" if self.user
  end

  def user_attributes=(attributes)
    unless attributes[:username].empty?
      self.user = User.find_or_create_by(username: attributes[:username])
    end
  end
end
