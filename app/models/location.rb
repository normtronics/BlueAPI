class Location
  include Mongoid::Document
  #field :id, type: Moped
  field :lat, type: String
  field :lang, type: String
  embedded_in :user, :class_name => "User"
end
