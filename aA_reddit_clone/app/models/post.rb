# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  url        :string
#  content    :text
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  
  validates :title, presence: true 
  
  has_and_belongs_to_many :subs
  
  belongs_to :author,
  foreign_key: :user_id,
  class_name: :User
  
end

