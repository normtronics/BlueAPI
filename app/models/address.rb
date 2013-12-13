class Address
  include Mongoid::Document
  field :city, type: String
  field :state, type: String
  field :zip, type: String
  embedded_in :user, :class_name => "User"
end
