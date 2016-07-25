class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  validates :caption, :presence => true
  validates :place_id, :presence => true

end
