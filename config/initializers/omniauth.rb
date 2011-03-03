Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,  "r8KkBXQSF1bqstjbX9YJw", "As0dDawLrhsu4FF5yUjjNYZJFZf9N8WNSZtfenOIY"
  provider :facebook, "193123984042175", "ff5830212fe73d1c86e6297de3f8e834"
end
