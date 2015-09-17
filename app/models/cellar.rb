class Cellar < ActiveRecord::Base
  belongs_to :user
  has_many :bottles, dependent: :destroy
  mount_uploader :image, ImageUploader
end
