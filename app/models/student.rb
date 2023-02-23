class Student < ApplicationRecord

    after_create :assign_default_role
  
    def assign_default_role
      self.add_role(:newuser) if self.roles.blank?
    end

  # rolify :before_add => :before_add_method

  def before_add_method(role)
    # do something before it gets added
  end
end
