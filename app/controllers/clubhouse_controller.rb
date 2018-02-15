class ClubhouseController < ApplicationController
  layout "clubhouse"
  
  def general_information
    @page_title = "Clubhouse General Information"
  end

  def calendar
    @page_title = "Clubhouse Event Calendar"
  end

  def hours
    @page_title = "Clubhouse Hours"
  end

  def reading_room
    @page_title = "Reading Room"
  end

  def rental_rules
    @page_title = "Clubhouse Rental Rules"
  end

  def rental_fees
    @page_title = "Clubhouse Rental Fees"
  end

  def rental_contact
    @page_title = "Clubhouse Rental Contact"
  end

  def policy
    @page_title = "Clubhouse Policy"
  end

  def check_out_list
    @page_title = "Rental Check-Out List"
  end
end
