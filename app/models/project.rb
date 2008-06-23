class Project < ActiveRecord::Base
  hobo_model

#  belongs_to :framework       # Extension subclass
#  belongs_to :project         # App subclass

#  belongs_to :creator, :class_name => 'User', :creator => true

  fields do
    website :string
    bugtracker :string
    repository :string
    community :string
    name :string, :required, :unique
    excerpt :string, :primary_content => true
    description :text
    meta_keywords :string
    timestamps
  end


  # --- Hobo Permissions --- #

  def creatable_by?(user)
    true
  end

  def editable_by?(user)
    true
  end

  def deletable_by?(user)
    true
  end

  def viewable_by?(user, field)
    true
  end

end
