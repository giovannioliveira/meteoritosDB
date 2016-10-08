class Image < ActiveRecord::Base
  belongs_to :meteorite
  belongs_to :specimen
  belongs_to :citation
end
