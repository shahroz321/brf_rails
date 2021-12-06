Rails.application.config.middleware.insert_before 0, Rack::Cors, debug: true, logger: (-> { Rails.logger }) do
  allow do
    origins 'localhost:3000', 'localhost:3005'
    resource '*',
             :headers => :any,
             :methods => [:get, :post, :delete, :put, :patch, :options, :head],
             :max_age => 0
  end
end
