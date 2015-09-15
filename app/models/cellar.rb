class Cellar < ActiveRecord::Base
  has_many :bottles, dependent: :destroy
end
