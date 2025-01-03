module HomeHelper
  # Returns the value of regional members from the comparison between the previous year and the current one by month
  def growth_degrowth(month)
    pre_value = instance_variable_get("@from_previous_year_#{month}").regional.to_f
    cur_value = instance_variable_get("@from_current_year_#{month}").regional.to_f
    percentual = ((cur_value - pre_value) / pre_value) * 100

    if cur_value > pre_value
      "<span class='text-success fs-4'><i class='fa-solid fa-circle-arrow-up'></i>#{percentual.round(2)}%&emsp;In Crescita</span>".html_safe
    else
      "<span class='text-danger fs-4'><i class='fa-solid fa-circle-arrow-down'></i>#{percentual.round(2)}%&emsp;In Calo</span>".html_safe
    end
  end

  # Returns the value of members per territory from the comparison between the previous year and the current one per month
  def growth_degrowth_territory(month, territory)
    pre_value = instance_variable_get("@from_previous_year_#{month}").send(territory).to_f
    cur_value = instance_variable_get("@from_current_year_#{month}").send(territory).to_f
    percentual = ((cur_value - pre_value) / pre_value) * 100

    if cur_value > pre_value
      "<span class='text-success fs-6'><i class='fa-solid fa-circle-arrow-up'></i>&emsp;#{percentual.round(2)}%</span>".html_safe
    else
      "<span class='text-danger fs-6'><i class='fa-solid fa-circle-arrow-down'></i>&emsp;#{percentual.round(2)}%</span>".html_safe
    end
  end

  #Returns the value of the members per category from the comparison between the previous year and the current one per month
  def growth_degrowth_category(month, category)
    pre_value = instance_variable_get("@from_previous_year_#{month}").send(category).to_f
    cur_value = instance_variable_get("@from_current_year_#{month}").send(category).to_f
    percentual = ((cur_value - pre_value) / pre_value) * 100

    if cur_value > pre_value
      "<span class='text-success fs-6'><i class='fa-solid fa-circle-arrow-up'></i>&emsp;#{percentual.round(2)}%</span>".html_safe
    else
      "<span class='text-danger fs-6'><i class='fa-solid fa-circle-arrow-down'></i>&emsp;#{percentual.round(2)}%</span>".html_safe
    end
  end
end
