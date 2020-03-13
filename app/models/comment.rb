class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank
  
  # def user_attributes(attrs)
  #   attrs.values.each do |attr|
  #     unless attr[:username].blank?
  #       self.user = User.find_or_create_by(attr)
  #     end
  #   end
  # end

end
