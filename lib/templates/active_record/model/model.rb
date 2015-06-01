<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>

  # Default Scope

  # Configurations

  # Attributes
  <% if attributes.any?(&:password_digest?) -%>
    has_secure_password
  <% end -%>

  # Associations

  # Validations

  # Callbacks

  # Scopes

end
<% end -%>