class SalesController < ApplicationController

  def new
    @sale = Sale.new
  end

end
