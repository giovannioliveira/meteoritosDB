class ElementAnalysis < ActiveRecord::Base
  self.table_name="element_analysis"
  belongs_to :analysis
end
