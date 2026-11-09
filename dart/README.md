# Phonetic Encoder API - Dart/Flutter Client

Phonetic Encoder generates phonetic codes for words using Soundex and Metaphone algorithms. These codes represent how words sound, enabling fuzzy matching of similar-sounding names.

[![pub package](https://img.shields.io/pub/v/apiverve_phonetic.svg)](https://pub.dev/packages/apiverve_phonetic)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Phonetic Encoder API](https://apiverve.com/marketplace/phonetic?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_phonetic: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_phonetic/apiverve_phonetic.dart';

void main() async {
  final client = PhoneticClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'word': 'smith',
      'algorithm': 'both'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Phonetic Encoder API](https://apiverve.com/marketplace/phonetic?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/phonetic](https://docs.apiverve.com/ref/phonetic?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
