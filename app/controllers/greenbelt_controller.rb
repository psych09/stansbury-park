class GreenbeltController < ApplicationController
  layout "greenbelt"
  
  def general_information
    @page_title = "Greenbelts | General Information"
  end

  def rules
    @page_title = "Greenbelts | Rules"
  end

  def millpond_trail
    @page_title = "Millpond Nature Trail"
  end
end
