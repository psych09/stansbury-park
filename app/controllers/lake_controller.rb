class LakeController < ApplicationController
  layout "lake"
  
  def general_information
    @page_title = "Lake General Information"
  end

  def rules
    @page_title = "Lake Rules"
  end

  def dock_approval
    @page_title = "Private Boat Dock Approval"
  end

  def mowing_schedule
    @page_title = "Lake Mowing Schedule"
  end

  def fishing
    @page_title = "Fishing"
  end

  def millpond
    @page_title = "Millpond"
  end

  def feeding_waterfowl
    @page_title = "Feeding the Waterfowl"
  end
end
