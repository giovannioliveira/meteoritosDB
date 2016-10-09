class Citation < ActiveRecord::Base
  def name
    self.inspect
  end
end
