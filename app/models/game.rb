class Game < ActiveRecord::Base
  mount_uploader :image, ImagesUploader

  belongs_to :category

  validates_presence_of :title, :category

end
