require 'rails/mongoid'

class User
  include Mongoid::Document
  field :firstName, type: String
  field :lastName, type: String
  field :userName, type: String
  field :email, type: String
  #embeds_many :locations, class_name: "location"
  #embeds_one :address, class_name: "address"
end
