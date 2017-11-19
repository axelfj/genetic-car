class Map{
                          ///////////////
                          // Attributes//
                          ///////////////
    private ArrayList<Point> points;
    private int distance, posY;
    private color floor, sky, ground;


                          ///////////////
                          // METHODS //
                          ///////////////
                          
    Map(int distance, color floor, color sky, color ground){
        this.distance = distance;
        this.floor = floor;
        this.sky = sky;
        this.ground = ground;
    }
    
    void drawMap(){
        beginShape(); 
        float posX = posY; 
        for (float x = 0; x <= width; x += 10) {
          float y = map(noise(posX), 0, 1, height*0.4,width*0.6);    
          vertex(x, y); 
          posX += 0.05;
        }
        //posY += 0.01;
        vertex(width, height);
        vertex(0, height);
        endShape(CLOSE);
    }
}
  
  