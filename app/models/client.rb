class Client < ActiveRecord::Base
  has_one :city
  belongs_to :city
end
