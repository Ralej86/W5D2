# == Schema Information
#
# Table name: subs
#
#  id          :bigint(8)        not null, primary key
#  title       :string           not null
#  description :text             not null
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sub < ApplicationRecord

  validates :title, :description, presence: true 
  
  belongs_to :moderator,
  foreign_key: :user_id,
  class_name: :User
  
  has_and_belongs_to_many :posts
  # has_many :posts
  
  # @sub.user_id = current_user.id
  

end


