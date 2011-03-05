Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,  "r8KkBXQSF1bqstjbX9YJw", "As0dDawLrhsu4FF5yUjjNYZJFZf9N8WNSZtfenOIY"
  provider :facebook, "193123984042175", "ff5830212fe73d1c86e6297de3f8e834"
  provider :linked_in, "fFu8ZU68r72rzO8ptv4PjX3nnY-Ui3HWUZXzZsuP6mLxmBpl_rJeASu-GGfbqSMp", "nw9p708hCaiCSpPSgcStU-6aGnXX4V7vuIIgzuMhDUY_lQHqjzHw4jxQZ63BaBr0"
end
