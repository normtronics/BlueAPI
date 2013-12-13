require 'rails/mongoid'

class User
  include Mongoid::Document
  field :firstName, type: String
  field :lastName, type: String
  field :userName, type: String
  field :email, type: String
  #field :createdOn, type: Date
  #field :updatedOn, type: Date
  embeds_many :locations, :class_name => "Location"
  embeds_many :addresses, :class_name => "Address"
end
