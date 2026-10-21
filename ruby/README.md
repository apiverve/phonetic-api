# Phonetic Encoder API - Ruby Gem

Phonetic Encoder generates phonetic codes for words using Soundex and Metaphone algorithms. These codes represent how words sound, enabling fuzzy matching of similar-sounding names.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_phonetic'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_phonetic
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_phonetic'

# Initialize the client
client = APIVerve::Phonetic::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  word: "smith",
  algorithm: "both"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ word: "smith", algorithm: "both" })
  puts response["data"]
rescue APIVerve::Phonetic::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Phonetic::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Phonetic::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "word": "smith",
    "soundex": "S530",
    "metaphone": "SM0"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/phonetic?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/phonetic?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/phonetic?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
