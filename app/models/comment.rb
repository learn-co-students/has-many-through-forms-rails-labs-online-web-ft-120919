class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  #Might have to introspect on the structure of user_hash 
  #Comment should accept nested attributes for its user
  def user_attributes=(user_hash)
    if user_hash[:username].present?
      #user will now store a User with this name (either a new one
      #or an existing one)
      user = User.find_or_create_by(username: user_hash[:username])

      self.user = user 
    end #if name present
  end #user_attributes=


end #class
