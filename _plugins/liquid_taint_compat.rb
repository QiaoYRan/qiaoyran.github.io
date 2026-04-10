# frozen_string_literal: true

# Liquid 4 (Jekyll 3.9 / github-pages) calls #tainted? on assign results; Ruby 3.2+ removed tainting.
# github-pages sets safe:true locally, so _plugins are not auto-loaded; see Gemfile load of this file.
unless Object.method_defined?(:tainted?)
  module JekyllLiquidTaintCompat
    def tainted?
      false
    end

    def untaint
      self
    end
  end

  Object.prepend(JekyllLiquidTaintCompat)
end
