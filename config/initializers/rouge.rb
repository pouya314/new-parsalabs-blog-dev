require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

class MyCustomRenderer < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet # yep, that's it.
end