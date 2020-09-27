module Types
  class UserInput < Types::BaseInputObject
    argument :first_name, String, required: false
    argument :last_name, String, required: false
    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true
    argument :role, String, required: false
  end
end

