# Phonetic Encoder API - PHP Package

Phonetic Encoder generates phonetic codes for words using Soundex and Metaphone algorithms. These codes represent how words sound, enabling fuzzy matching of similar-sounding names.

## Installation

Install via Composer:

```bash
composer require apiverve/phonetic
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Phonetic\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'word' => 'smith',
    'algorithm' => 'both'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Phonetic\Client;
use APIVerve\Phonetic\Exceptions\APIException;
use APIVerve\Phonetic\Exceptions\ValidationException;

try {
    $response = $client->execute(['word' => 'smith', 'algorithm' => 'both']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/phonetic?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/phonetic?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/phonetic?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
