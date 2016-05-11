class Contest

  include Mongoid::Document
  include Mongoid::Timestamps::Updated

  field :name, type: String
  field :date, type: Date

  belongs_to :venue
  embeds_many :entrants
end