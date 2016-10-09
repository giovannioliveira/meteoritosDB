class Analysis < ActiveRecord::Base
  self.table_name="analysis"
  belongs_to :meteorite
  belongs_to :citation
  has_many :element_analysises, :class_name => 'ElementAnalysis'
end
