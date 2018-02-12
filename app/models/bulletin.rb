class Bulletin < ApplicationRecord
  validates_presence_of :title, :body
  
  mount_uploader :thumb_image, BulletinUploader
  mount_uploader :main_image, BulletinUploader
  
  def self.by_position
    order("position ASC")
  end
end