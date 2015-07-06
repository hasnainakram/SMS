class Program < ActiveRecord::Base
has_many :session
validates :program_tigle,presence: true,length: { maximum: 50 }
validates :Duration,presence: true,length: { maximum: 50 }
end
