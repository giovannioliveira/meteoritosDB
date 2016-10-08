class Specimen < ActiveRecord::Base
  self.table_name="specimen"
  belongs_to :meteorite
end
