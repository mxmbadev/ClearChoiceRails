class Category < ActiveRecord::Base
  has_many :client_categories
  has_many :clients, through: :client_category
  # delegate :client, to: :client_category
end
