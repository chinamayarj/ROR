json.extract! employee, :id, :id, :firstname, :lastname, :email, :phone, :dob, :doj, :designation, :department, :residential_address, :permanent_address, :created_at, :updated_at
json.url employee_url(employee, format: :json)
