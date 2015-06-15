json.array!(@students) do |student|
  json.extract! student, :id, :name, :Father_name, :program_id, :cnic, :d_of_birth, :gender, :reg_no, :address, :mob, :session
  json.url student_url(student, format: :json)
end
