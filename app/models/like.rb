# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  chirp_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_likes_on_chirp_id  (chirp_id)
#  index_likes_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (chirp_id => chirps.id)
#  fk_rails_...  (user_id => users.id)
#
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :chirp
end
