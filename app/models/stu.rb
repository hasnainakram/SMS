class Stu < ActiveRecord::Base
  belongs_to :program
  belongs_to :session
  belongs_to :user
validates :student_name,presence: true,length: { maximum: 50 }
validates :f_name,presence: true,length: { maximum: 50 }
validates :reg_no,presence: true,length: { maximum: 50 }
validates :address,presence: true,length: { maximum: 50 }

#before_save {self.tt = current_user.name}
end
