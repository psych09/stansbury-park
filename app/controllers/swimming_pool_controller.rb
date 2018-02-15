class SwimmingPoolController < ApplicationController
  layout "swimming_pool"
  
  def general_information
    @page_title = "Swimming Pool | General Information"
  end

  def rules
    @page_title = "Swimming Pool | Rules"
  end

  def hours
    @page_title = "Swimming Pool | Hours"
  end

  def admission
    @page_title = "Swimming Pool | Admission"
  end

  def season_pass
    @page_title = "Swimming Pool | Season Pass"
  end

  def party_rental
    @page_title = "Swimming Pool | Party Rental"
  end

  def swimming_lessons
    @page_title = "Swimming Lessons"
  end
end
