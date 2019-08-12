## Installation

```sh
gem install khipu-chaski-api-client
```

## Usage

### Basic configuration
```ruby
require 'khipu-chaski-api-client'

KhipuChaski.configure do  |c|
  c.secret           = 'abc123'
  c.receiver_id      = 1234
end
```

### Basic usage

#### Send push message
```ruby
api      = KhipuChaski::PushNotificationsApi.new()
response = api.send_message(KhipuChaski::Message.new({"recipientIdSet" => ["recipient1"], "subject" => "subject", "body" => "Hello!!"}))

print response

```

### Documentation

- [gem docs](http://www.rubydoc.info/gems/khipu-chaski-api-client/)

