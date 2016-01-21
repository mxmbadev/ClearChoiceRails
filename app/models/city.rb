class City < ActiveRecord::Base
  has_many :clients
end
