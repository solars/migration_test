class Framework < Project
  hobo_model

#  has_many :apps, :dependent => :destroy
#  has_many :extensions

  fields do
    website :string
    bugtracker :string
    repository :string
    community :string
    name :string
    description :text, :primary_content => true
    meta_keywords :string
    meta_description :string
  end

end
