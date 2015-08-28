json.array!(@stus) do |stu|
  json.extract! stu, :id, :student_name, :f_name, :reg_no, :program_id, :session_id, :domicile, :address, :mob, :user_id, :tt
  json.url stu_url(stu, format: :json)
end
