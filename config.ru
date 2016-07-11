# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
# config.cache_classes = true
# config.serve_static_assets = true
# config.assets.compile = true
# config.assets.digest = true
run Rails.application
