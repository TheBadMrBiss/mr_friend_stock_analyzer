Welcome to the Mr. Friend Stock Analyzer tool!

We provide tools to perform stock analysis for free so you don't need to spend investment capital on them.

## Development Environment Setup
1. Clone this repo
2. Execute command --> bundle install (in the root directory)
3. Verify the tests pass --> rspec spec/mr_friend_spec.rb
4. Verify UI loads --> bundle exec ruby mr_friend_ui.rb

Note: 
- If you encounter issues launching the UI on Linux, ensure libui is installed via your package manager.
- Run ui with 'bundle exec ruby' to ensure package versions from gemfile.lock are used