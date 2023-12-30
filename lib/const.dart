class Constants {
  static const Map<String, int> fruitsMap = {
    'MANGO': 73,
    'ORANGE': 66,
    'PINEAPPLE': 54,
    'GUAVA': 34,
    'AVOCADO': 83
  };
  static const Map<String, int> vegetablesMap = {
    'TOMATO': 25,
    'BRINJAL': 50,
    'ONION': 62,
    'CARROT': 53,
    'GREEN PEAS': 71,
    'CABBAGE': 37
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
