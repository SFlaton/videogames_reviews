class Game < ActiveRecord::Base
  mount_uploader :image, ImagesUploader
  has_many :reviews
  belongs_to :category

  validates_presence_of :title, :category

end
