class Session < ActiveRecord::Base
  belongs_to :program
has_many :programs
validates :session_name,presence: true,length: { maximum: 50 }


before_save {self.batch = program.program_tigle + session_name}
end


  

