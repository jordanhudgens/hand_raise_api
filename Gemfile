source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'
gem 'redis', '~> 3.3', '>= 3.3.3'
gem 'sidekiq', '~> 5.0'
gem 'httparty', '~> 0.15.5'
gem 'faker', git: 'https://github.com/stympy/faker'
