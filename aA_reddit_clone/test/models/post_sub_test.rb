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

require 'test_helper'

class PostSubTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
