# == Schema Information
#
# Table name: artwork_shares
#
#  id         :bigint(8)        not null, primary key
#  artwork_id :integer          not null
#  viewer_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtworkShare < ApplicationRecord
  validates :artwork_id, :viewer_id, presence: true
  validates :artwork_id, uniqueness: {scope: :viewer_id, message: "can only be associated with a viewer_id once"}
  validate :self_sharing

  belongs_to :viewer,
    primary_key: :id,
    foreign_key: :viewer_id,
    class_name: :User

  belongs_to :artwork,
   primary_key: :id,
   foreign_key: :artwork_id,
   class_name: :Artwork

  def self_sharing
    if self.viewer.id == self.artwork.artist_id
      errors[:artwork_id] << "cannot be shared with self"
    end
  end
end
