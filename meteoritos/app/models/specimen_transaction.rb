class SpecimenTransaction < ActiveRecord::Base
  belongs_to :specimen
  belongs_to :party
  belongs_to :counterparty, class_name: "Party"
end
