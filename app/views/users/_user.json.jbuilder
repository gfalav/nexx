json.extract! user, :id, :firstname, :lastname, :email, :jobtitle, :officephone, :celphone, :address, :country, :twitter, :facebook, :googleplus, :website, :photousr, :created_at, :updated_at
json.url user_url(user, format: :json)
