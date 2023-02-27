# == Schema Information
#
# Table name: likes
#
#  id           :bigint           not null, primary key
#  likable_type :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  likable_id   :bigint           not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_likes_on_likable  (likable_type,likable_id)
#  index_likes_on_user_id  (user_id)
#  unique_user_likes       (likable_id,likable_type,user_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
