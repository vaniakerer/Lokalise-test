# Export required secrets first (replace placeholders)
export LOKALISE_TOKEN="your token"
export LOKALISE_PROJECT_ID="ID"

# Optional: choose environment (dev|tst|stg|prod)
ENV=dev
  
  
  # Upload Romanian translations with tag = version_name
  lokalise2 \
  --token "$LOKALISE_TOKEN" \
  --project-id "$LOKALISE_PROJECT_ID" \
  file upload \
  --file retail/src/main/res/values-ro/strings.xml \
  --lang-iso ro \
  --replace-modified \
  --cleanup-mode false \
  --tags "v1.0.0"

  
  # Upload EN translations with tag = version_name
  lokalise2 \
  --token "$LOKALISE_TOKEN" \
  --project-id "$LOKALISE_PROJECT_ID" \
  file upload \
  --file retail/src/main/res/values/strings.xml \
  --lang-iso en \
  --replace-modified \
  --cleanup-mode false \
  --tags "v1.0.0"
