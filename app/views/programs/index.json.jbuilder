json.array!(@programs) do |program|
  json.extract! program, :id, :program_tigle, :Duration
  json.url program_url(program, format: :json)
end
