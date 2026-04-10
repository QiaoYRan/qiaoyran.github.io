#!/usr/bin/env bash
# Local Jekyll: UTF-8 locale (Sass/theme SCSS needs this) + project root.
# Use Homebrew Ruby 3.2+ if system Ruby is too old, e.g.:
#   export PATH="/opt/homebrew/opt/ruby@3.2/bin:/opt/homebrew/lib/ruby/gems/3.2.0/bin:$PATH"
#   export PATH="/usr/local/opt/ruby@3.2/bin:/usr/local/lib/ruby/gems/3.2.0/bin:$PATH"
set -euo pipefail
cd "$(dirname "$0")/.."
export LANG="${LANG:-en_US.UTF-8}"
export LC_ALL="${LC_ALL:-en_US.UTF-8}"
exec bundle exec jekyll "$@"
