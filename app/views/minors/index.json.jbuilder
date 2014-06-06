json.array!(@minors) do |minor|
  json.extract! minor, :id, :FirstName, :LastName, :SSN, :DOB, :Age, :Grade
  json.url minor_url(minor, format: :json)
end
