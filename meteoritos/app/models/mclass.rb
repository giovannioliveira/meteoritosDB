class Mclass < ActiveRecord::Base
  belongs_to :mtype
  def to_s
    self.mclass
  end
end
