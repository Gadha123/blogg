#document
class User < ApplicationRecord
  def self.insert(hasher = {})
    name = hasher[:name]
    subcategory_inputs = hasher[:subcategory_inputs]
   category_hash = {"technical"=>["rails","Iot"],"nontechnical"=>["books","music"]}
 category = nil
 category_hash.each do |key, values|
  values.each do |input|
if subcategory_inputs.include?(input) 
 puts "Category is #{key}"
 User.create(name: name, category: key, subcategory: input)
 break
end
  end
 end
  end
end
