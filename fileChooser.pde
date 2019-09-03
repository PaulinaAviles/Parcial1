
  void fileSelected(File selection) {
    if (selection == null) {
      println("Window was closed or the user hit cancel.");
    } else {
      println("User selected " + selection.getAbsolutePath());
      file = selection.getAbsolutePath();
      //println(file);
    }
}

void keyReleased(){
  if (key == 'a' || key == 'A'){
    selectInput("Select a file to process:", "fileSelected");
  }
}
