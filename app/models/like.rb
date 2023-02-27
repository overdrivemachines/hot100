# == Schema Information
#
# Table name: likes
#
#  id           :bigint           not null, primary key
#  likable_type :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  likable_id   :bigint           not null
#
# Indexes
#
#  index_likes_on_likable  (likable_type,likable_id)
#  unique_likes            (likable_id,likable_type) UNIQUE
#
class Like < ApplicationRecord
  belongs_to :likable, polymorphic: true
end
