json.array!(@sessions) do |session|
  json.extract! session, :id, :session_name, :program_tigle, :description
  json.url session_url(session, format: :json)
end
