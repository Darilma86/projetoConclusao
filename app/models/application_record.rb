class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  I18n.default_locale = :pt
end
