class Meteorite < ActiveRecord::Base
  belongs_to :mgroup
  belongs_to :country
  belongs_to :state
  belongs_to :city
end
