Rails.application.routes.draw do
  # health check route
  get "up" => "rails/health#show", as: :rails_health_check
  # stock lookup route
  get "lookup" => "stock_lookup#lookup", as: :lookup
end
