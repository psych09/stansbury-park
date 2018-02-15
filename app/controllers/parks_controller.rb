class ParksController < ApplicationController
  layout "parks"
  
  def general_information
    @page_title = "Parks | General Information"
  end

  def rules
    @page_title = "Parks | Rules"
  end

  def hours
    @page_title = "Parks | Hours"
  end

  def pavilion_fees
    @page_title = "Parks | Pavilion Fees"
  end
  
  def all_parks
    @page_title = "Parks & Amenities"
  end
end
