# Dezer-Auto-Museum
Temporary Landing Page for Dezer Auto Museum

# Getting Started

Site is built using the static site generator Middleman.

```
bundle install
gem install middleman
```

# Development
```
middleman build
Run `middleman server` and load http://localhost:4567
Edit files under `source/` and your page should reload automatically via LiveReload
 ```

# Deployment
```
export SPEED_DIGITAL_AWS_ACCESS_KEY_ID="..."
export SPEED_DIGITAL_AWS_SECRET_ACCESS_KEY="..."
middleman build       # builds static assets
middleman s3_sync     # upload assets to S3
```
