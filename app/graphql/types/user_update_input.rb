module Types
  class UserUpdateInput < Types::BaseInputObject
    argument :first_name, String, required: false
    argument :last_name, String, required: false
    argument :email, String, required: false
    argument :password, String, required: false
    argument :password_confirmation, String, required: false
    argument :role, String, required: false
  end
end


