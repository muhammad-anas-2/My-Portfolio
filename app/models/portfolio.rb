class Portfolio < ApplicationRecord
  has_many :technologies
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_genarator(height: '500', width: '400')
    self.thumb_image ||= Placeholder.image_genarator(height: '250', width: '200')
  end
end
