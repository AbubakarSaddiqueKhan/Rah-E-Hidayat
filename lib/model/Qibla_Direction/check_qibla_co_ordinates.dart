class QiblaCoOrdinates {
  static String checkCardinalWithDirectionInDegree({required double degree}) {
    if (degree < 0) {
      return "Invalid";
    } else {
      if (degree == 0 || degree == 360) {
        return "N";
      } else if (degree == 90) {
        return "E";
      } else if (degree == 270) {
        return "S";
      } else if (degree == 180) {
        return "W";
      } else if (degree > 0 && degree < 90) {
        return "NE";
      } else if (degree > 90 && degree < 180) {
        return "ES";
      } else if (degree > 180 && degree < 270) {
        return "SW";
      } else if (degree > 270 && degree < 360) {
        return "NW";
      } else {
        return "Invalid";
      }
    }
  }
}
