
class AudioButton{
  AudioButton({this.text, this.language = false, this.enabled = true}){
    nameFile = text.split(' ')[0].toLowerCase();
    if (language == true) {
      text = text + ' (GER)';
      nameFile = nameFile + '_ger';
    }
  }

  String text;
  bool language;
  String nameFile;
  bool enabled;
}