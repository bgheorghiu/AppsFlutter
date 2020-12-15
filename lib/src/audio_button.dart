
class AudioButton{
  String text;
  bool language;
  String nameFile;
  bool enabled = true;

  AudioButton({this.text, this.language = false, this.enabled = true}){
    nameFile = this.text.split(" ")[0].toLowerCase();
    if (this.language == true) {
      text = this.text + " (GER)";
      nameFile = nameFile + "_ger";
    }
  }
}