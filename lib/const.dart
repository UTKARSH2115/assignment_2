class Constants {
  static const Map<String, int> fruitsMap = {
    'Mango': 73,
    'Orange': 66,
    'PineApple': 54,
    'Guava': 34,
    'Avocado': 83
  };
  static const Map<String, int> vegetablesMap = {
    'Tomato': 25,
    'Brinjal': 50,
    'Onion': 62,
    'Carrot': 53,
    'Green Peas': 71,
    'Cabbage': 37
  };
}

class DataStore {
  static final List<String> _selectedThings = [];

  static void setMapValue(String keyName) {
    _selectedThings.add(keyName);
  }

  static List<String> getArray() {
    return _selectedThings;
  }

  static int getPrice(String objectName) {
    try {
      final correspondingPrice = Constants.fruitsMap.containsKey(objectName)
          ? Constants.fruitsMap[objectName]
          : Constants.vegetablesMap.containsKey(objectName)
              ? Constants.vegetablesMap[objectName]
              : 'Error';

      return int.parse(correspondingPrice.toString());
    } catch (e) {
      throw Error();
    }
  }
}
