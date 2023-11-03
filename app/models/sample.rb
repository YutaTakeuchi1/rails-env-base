class Sample < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "text", "updated_at", "value"]
  end
  
  ransacker :value_eq, formatter: proc { |v| v.to_i } do |parent|
    parent.table[:value]
  end
end
