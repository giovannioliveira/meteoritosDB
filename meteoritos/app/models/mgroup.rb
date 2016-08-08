class Mgroup < ActiveRecord::Base
  belongs_to :mclass
  def to_s
    self.mgroup
  end
end
