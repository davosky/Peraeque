module HomeHelper
  # Returns the value of regional members from the comparison between the previous year and the current one by month
  def growth_degrowth(month)
    pre_value = instance_variable_get("@from_previous_year_#{month}").regional.to_f
    cur_value = instance_variable_get("@from_current_year_#{month}").regional.to_f
    percentual = ((cur_value - pre_value) / pre_value) * 100

    if cur_value > pre_value
      "<span class='text-success fs-4'><i class='fa-solid fa-circle-arrow-up'></i>&nbsp;#{percentual.round(2)}%&nbsp;<span class='fs-6'>&nbsp;In Crescita</span></span>".html_safe
    else
      "<span class='text-danger fs-4'><i class='fa-solid fa-circle-arrow-down'></i>&nbsp;#{percentual.round(2)}%&nbsp;<span class='fs-6'>&nbsp;In Calo</span></span>".html_safe
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

  # Returns the value of the members per category from the comparison between the previous year and the current one per month
  def growth_degrowth_category(month, category)
    pre_value = instance_variable_get("@from_previous_year_#{month}").send(category).to_f
    cur_value = instance_variable_get("@from_current_year_#{month}").send(category).to_f
    percentual = ((cur_value - pre_value) / pre_value) * 100

    if cur_value > pre_value
      "<span class='text-success fs-6'><i class='fa-solid fa-circle-arrow-up'></i>&nbsp;#{percentual.round(2)}%</span>".html_safe
    else
      "<span class='text-danger fs-6'><i class='fa-solid fa-circle-arrow-down'></i>&nbsp;#{percentual.round(2)}%</span>".html_safe
    end
  end

  # Returns the value of the members per age range from the current year per month
  def age_percentual(month, age_range)
    cur_ran = instance_variable_get("@from_current_year_#{month}").send(age_range).to_f
    cur_tot = instance_variable_get("@from_previous_year_#{month}").regional.to_f
    percentual = (cur_ran / cur_tot) * 100

    "<span class='text-info'>#{percentual.round(2)}%</span>".html_safe
  end

  # Returns the value of the members per age range from the current year per month to put on chartkick chart
  def chart_kick_age_percentual(month, age_range)
    cur_ran = instance_variable_get("@from_current_year_#{month}").send(age_range).to_f
    cur_tot = instance_variable_get("@from_previous_year_#{month}").regional.to_f
    percentual = ((cur_ran / cur_tot) * 100).round(2)
  end

  # Returns the value of the subscription types from the giving year per month to put on chartkick chart
  def chart_kick_subscription_type_percentual(year, month, subscription_type)
    par_sub = instance_variable_get("@from_#{year}_year_#{month}").send(subscription_type).to_f
    tot_sub = instance_variable_get("@from_#{year}_year_#{month}").regional.to_f
    percentual = ((par_sub / tot_sub) * 100).round(2)
  end

  def growth_degrowth_subscription_type(month, subscription_type)
    pre_value = instance_variable_get("@from_previous_year_#{month}").send(subscription_type).to_f
    cur_value = instance_variable_get("@from_current_year_#{month}").send(subscription_type).to_f
    percentual = ((cur_value - pre_value) / pre_value) * 100

    if cur_value > pre_value
      "<span class='text-success fs-6'><i class='fa-solid fa-circle-arrow-up'></i>&nbsp;#{percentual.round(2)}%</span>".html_safe
    else
      "<span class='text-danger fs-6'><i class='fa-solid fa-circle-arrow-down'></i>&nbsp;#{percentual.round(2)}%</span>".html_safe
    end
  end

  def chartkick_growth_degrowth_subscription_type(month, subscription_type)
    pre_value = instance_variable_get("@from_previous_year_#{month}").send(subscription_type).to_f
    cur_value = instance_variable_get("@from_current_year_#{month}").send(subscription_type).to_f
    percentual = ((cur_value - pre_value) / pre_value) * 100
    percentual = percentual.round(2)
  end
end
