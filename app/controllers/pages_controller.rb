class PagesController < ApplicationController
  def about
    @page_title = "About Us"
  end
  
  def meeting_minutes
    @page_title = "Meeting Minutes"
  end

  def golf_course
    @page_title = "Golf Course"
  end
  
  def spoc
    @page_title = "S.P.O.C."
  end
  
  def general_information
    @page_title = "General Information"
  end
end
