module ApplicationHelper
  def full_user
    "#{current_user.first_name} #{current_user.last_name}"
  end
end
