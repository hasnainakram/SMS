json.array!(@lecturers) do |lecturer|
  json.extract! lecturer, :id, :name, :desig, :date_of_join, :address, :qualification, :cnic, :type, :description
  json.url lecturer_url(lecturer, format: :json)
end
