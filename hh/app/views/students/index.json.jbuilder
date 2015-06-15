json.array!(@students) do |student|
  json.extract! student, :id, :F_name, :L_name, :gender, :B_date, :email, :mob, :address, :city, :state, :Regstration_no, :department, :program
  json.url student_url(student, format: :json)
end
