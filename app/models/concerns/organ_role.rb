module OrganRole
  def add_default_roles
    Role.default_roles.each do |role|
      Actor.create!(organ: self, role: role)
    end
  end
end
