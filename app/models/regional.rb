class Regional < ApplicationRecord
  scope :from_previous_year_january, -> {
          where(year: (Date.today.year - 1).to_s, month: "Gennaio")
        }

  scope :from_current_year_january, -> {
      where(year: Date.today.year.to_s, month: "Gennaio")
    }
end
