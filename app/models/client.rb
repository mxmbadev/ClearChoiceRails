class Client < ActiveRecord::Base
  has_one :client_category
  has_one :category, through: :client_category
  # delegate :category, to: :client_category
end
