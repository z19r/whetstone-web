set dotenv-load

default:
    @just --list

# Start local dev server on port 8000
dev port="8000":
    python3 -m http.server {{port}}

# Format CSS and HTML with prettier
fmt:
    prettier --write "**/*.css" "**/*.html"

# Check formatting without writing
fmt-check:
    prettier --check "**/*.css" "**/*.html"

# Open site in default browser
open port="8000":
    xdg-open "http://localhost:{{port}}"

# Serve and open in one shot
serve port="8000":
    just open {{port}} &
    just dev {{port}}

# Deploy to Netlify
deploy:
    netlify deploy --prod

# Deploy preview (draft)
deploy-preview:
    netlify deploy
