class Events < ActiveRecord::Base
  has_many :people, :class_name => 'People', :foreign_key => 'event_id'

  class << self
    def find_by_key(key)
      self.where(:key => key).first
    end
  end
end
