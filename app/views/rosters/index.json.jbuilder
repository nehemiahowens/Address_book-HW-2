json.array!(@rosters) do |roster|
  json.extract! roster, :id, :first_name, :last_name, :email, :cell_phone, :home_phone, :work_phone
  json.url roster_url(roster, format: :json)
end
