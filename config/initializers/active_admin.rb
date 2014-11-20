ActiveAdmin.setup do |config|
  config.site_title = 'TT Base'
  config.site_title_link = '/'
  config.default_namespace = false
  config.authentication_method = :authenticate_admin_user!
  config.current_user_method = :current_admin_user
  config.logout_link_path = :destroy_admin_user_session_path
  config.root_to = 'obch_dolg200909201306s#index'
  config.allow_comments = false
  config.batch_actions = true
  config.download_links = [:csv]

  # == CSV options
  #
  # Set the CSV builder separator
  config.csv_options = { col_sep: ';' }
  #
  # Force the use of quotes
  # config.csv_options = { force_quotes: false }

  # == Pagination
  #
  # Pagination is enabled by default for all resources.
  # You can control the default per page count for all resources here.
  #
  # config.default_per_page = 30
end
