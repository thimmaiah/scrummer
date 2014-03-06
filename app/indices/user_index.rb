ThinkingSphinx::Index.define :user, :with => :real_time do
  
  # fields
  indexes transliterate_first_name, :as=>:first_name
  indexes transliterate_last_name, :as=>:last_name
  indexes email
  indexes role

  set_property :enable_star => 1
  set_property :min_infix_len => 2
  set_property :dict => :keywords

  set_property :field_weights => {
    :first_name => 10,
    :last_name => 10,
    :email => 10,
    :role => 6
  }

end