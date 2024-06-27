# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


# How to disable Rails Form's `.field_with_errors
ActionView::Base.field_error_proc = proc do |html_tag, instance|
  html_tag.html_safe
end