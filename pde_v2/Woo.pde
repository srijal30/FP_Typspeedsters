Page currentPage;

void setup() {
    //load the words
    String[] words = loadStrings("default.txt");
    for ( String word : words ) WordGenerator.addWord( word );
    size(1000, 800);
    
    //other stuff
    surface.setTitle("BongoCatType");
    surface.setResizable(true);
    frameRate(60);
    
    //set the current page to home
    currentPage = new Home();
    currentPage.setup();
}

void draw(){
  // background stuff
  background(255,192,203);

  //current page stuff
  //currentPage.setup(); //to detect for resize
  currentPage.process();
  currentPage.draw();
}
