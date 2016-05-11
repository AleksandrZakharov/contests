class Entrant
  include Mongoid::Document
  field :_id, type: Integer
  field :name, type: String
  field :group, type: String
  field :secs, type: Float

  belongs_to :racer
  embedded_in :contest
  before_create do |doc|
  	r = doc.racer
  	if r
  		doc.name="#{r.last_name}, #{r.first_name}"
    end
  end

  protected

end