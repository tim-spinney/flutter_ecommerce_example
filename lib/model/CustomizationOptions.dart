
interface class CustomizationOptions {

}

class ColorCustomizationOptions implements CustomizationOptions {
  final List<String> colors;

  ColorCustomizationOptions(this.colors);
}