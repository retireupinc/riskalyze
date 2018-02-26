# Riskalyze

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'riskalyze_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install riskalyze_ruby

## Usage

### Configuration

Configure the gem with Riskalyze `client_id` and `client_secret`

```ruby
RiskalyzeRuby.configure do |config|
  config.client_id = "your-client-id"
  config.client_secret = "your-client-secret"
end
```

Create a new client

```ruby
client = RiskalyzeRuby::Client.new(oauth_token: "users-oauth-token", refresh_token: "users-refresh-token")
```

Note: This gem does not handle creating oauth access tokens. It is recommended to use [omniauth-riskalyze](https://github.com/TKOFinancialSolutions/omniauth-riskalyze) for the oauth flow. This gem does support refreshing oauth access tokens, however. Use the example below to refresh the token.

```ruby
  repsonse = client.refresh_access_token!
  # {
  #   oauth_token: 'new-token',
  #   refresh_token: 'new-refresh-token'
  # }
```

#### Clients

##### Search clients

```ruby
  riskalyze_clients = client.search_clients('Jerry')
```

Returns `Array[RiskalyzeRuby::Models::Client]`

##### Get all clients

```ruby
  riskalyze_clients = client.clients
```

Returns `Array[RiskalyzeRuby::Models::Client]`

##### Find client by id

```ruby
  riskalyze_client = client.client(1234)
```

Returns `RiskalyzeRuby::Models::Client`

#### Portfolios

##### Get all portfolios

```ruby
  riskalyze_portfolios = client.portfolios
```

Returns `Array[RiskalyzeRuby::Models::Portfolio]`

##### Find portfolio by id

```ruby
  riskalyze_portfolio = client.portfolio(1234)
```

Returns `RiskalyzeRuby::Models::Portfolio`


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/retireupinc/riskalyze-ruby.
