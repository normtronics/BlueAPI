class Location
  include Mongoid::Document
  field :id, type: Moped
  field :lat, type: String
  field :lang, type: String
end
