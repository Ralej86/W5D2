# == Schema Information
#
# Table name: post_subs
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sub_id     :integer
#  post_id    :integer
#

class PostSub < ApplicationRecord
  validates :sub_id, :post_id
end
