class VhsTape < ActiveRecord::Base
  @queue = :vhs_insert

  def self.perform(id)
    puts "inserting #{self.find(id).title}"
  end
end
