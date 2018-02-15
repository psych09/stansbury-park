module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_filter :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "Stansbury Park"
    @seo_keywords = "Stansbury Park lake parks Millpond Tooele County greenbelts clubhouse spoc S.P.O.C. cemetery swimming pool"
  end
end