class Password
  include Mongoid::Document
  field :pass, type: String
  field :salt, type: String 
end
