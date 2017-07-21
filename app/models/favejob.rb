class Favejob < ApplicationRecord
  belongs_to :user, :dependent => :delete

  validates :title, presence: true
  validates :location, presence: true
  validates :position, presence: true
  validates :description, presence: true
  validates :website, presence: true
  validates :apply, presence:true

  geocoded_by :address
  after_validation :geocode

end
