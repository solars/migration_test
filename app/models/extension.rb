class Extension < Project
  hobo_model

#  has_many :apps, :dependent => :destroy

  fields do
    website :string
    bugtracker :string
    repository :string
    community :string
    name :string, :required, :unique
    excerpt :string, :primary_content => true
    description :text
    meta_keywords :string
  end

end
