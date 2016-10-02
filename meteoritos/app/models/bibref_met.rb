class BibrefMet < ActiveRecord::Base
  belongs_to :bibref
  belongs_to :met
end
