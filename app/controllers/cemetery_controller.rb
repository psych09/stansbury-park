class CemeteryController < ApplicationController
  def general_information
    @page_title = "Cemetery | General Information"
  end

  def fees
    @page_title = "Cemetery | Fees & Charges"
  end
end
