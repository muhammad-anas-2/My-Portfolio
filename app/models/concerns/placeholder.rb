module Placeholder
  extend ActiveSupport::Concern

  def self.image_genarator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end
end
