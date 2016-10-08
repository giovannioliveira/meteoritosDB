class Analysis < ActiveRecord::Base
  self.table_name="analysis"
  belongs_to :meteorite
  belongs_to :citation
end
