module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Dev Portfolio | Robson Peacock"
    @seo_keywords = "Dev Robson Peacock"
  end
end
