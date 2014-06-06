json.array!(@employers) do |employer|
  json.extract! employer, :id, :business_name
  json.url employer_url(employer, format: :json)
end
