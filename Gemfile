source "https://rubygems.org"

# github-pages forces safe:true locally, so _plugins/*.rb are never loaded. Liquid 4 still calls
# String#tainted? (removed in Ruby 3.2+). Loading this shim from the Gemfile fixes bundle exec jekyll.
load File.expand_path("_plugins/liquid_taint_compat.rb", __dir__) if File.exist?(File.expand_path("_plugins/liquid_taint_compat.rb", __dir__))

# ------------------------------------------------------------------------------
# Jekyll stack (GitHub Pages)
#
# `github-pages` pins a compatible set: jekyll, kramdown, liquid, jekyll-sass-converter, etc.
# Do not add a separate `gem "jekyll"` with a different version — it will conflict.
#
# _config.yml plugins are satisfied by github-pages; the :jekyll_plugins group below duplicates
# a few so `bundle exec` loads them in dev and matches your explicit plugin list.
# ------------------------------------------------------------------------------

gem "github-pages", group: :jekyll_plugins

# Ruby 3+ does not include webrick; required for `jekyll serve` locally (harmless on CI build).
gem "webrick"

gem "wdm", "~> 0.1.0" if Gem.win_platform?

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-sitemap"
  gem "jekyll-paginate"
  gem "jekyll-redirect-from"
  # Local live reload; optional — remove if it ever breaks CI native extension builds
  gem "hawkins"
end
