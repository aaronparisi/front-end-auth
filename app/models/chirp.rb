# == Schema Information
#
# Table name: chirps
#
#  id         :bigint           not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint           not null
#
# Indexes
#
#  index_chirps_on_author_id  (author_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => users.id)
#
class Chirp < ApplicationRecord
  validates :body, presence: true
  validate :chirp_too_long

  belongs_to :author, class_name: :User, foreign_key: "author_id"

  def chirp_too_long
    if body.length > 140
      errors[:body] << "too long"
    end
  end
end
