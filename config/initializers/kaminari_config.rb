# frozen_string_literal: true

Kaminari.configure do |config|
   config.default_per_page = 20
  # config.max_per_page = nil
  # config.window = 4
  config.outer_window = 3
  # config.left = 0
  # config.right = 0
  # config.page_method_name = :page
  # config.param_name = :page
  # config.max_pages = nil
  # config.params_on_first_page = false
end
# https://github.com/kaminari/kaminari
# https://viblo.asia/p/phan-trang-voi-kaminari-73KbvZoARmWB
#https://laptrinhx.com/su-dung-gem-kaminari-phan-trang-trong-ung-dung-ruby-on-rails-586954528/