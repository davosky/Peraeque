class HomeController < ApplicationController
  def index
  end

  def credits
  end

  def jan
    @from_previous_year_january = Regional.from_previous_year_january.first
    @from_current_year_january = Regional.from_current_year_january.first
  end
end
