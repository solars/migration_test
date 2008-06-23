class App < Project
  hobo_model

#  has_many :categorizations
#  has_many :categories, :through => :categorizations, :managed => true

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

#  validates_presence_of :framework

end
