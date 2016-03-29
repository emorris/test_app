class Cat < ActiveRecord::Base

  def self.one
    limit(1)
  end
end
