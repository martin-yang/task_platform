module DefaultRole
  def self.default_roles
    ["creator","member"].map{|k| self.find_or_create_by(name: k)}
  end
end
