RailsAdmin.config do |config|
  config.asset_source = :sprockets

  config.parent_controller = "ApplicationController"

  config.authorize_with do
    redirect_to main_app.root_path unless current_user.admin?
  end

  config.main_app_name = [ "Peraeque" ]

  config.actions do
    dashboard
    index
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
