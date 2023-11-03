class Sample < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "text", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

  ransacker :text_cont, formatter: proc { |v| v.downcase } do |parent|
    Arel::Nodes::InfixOperation.new('LIKE', Arel::Nodes::NamedFunction.new('LOWER', [parent.table[:text]]), "%#{v}%")
  end
end
