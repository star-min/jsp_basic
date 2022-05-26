
public class test{
     public static void main(String[] args){
        Sample s = new Make();
        s.run( 5 );
     }
}

abstract class Sample{
    String star;
     abstract void run(int n);
}

class Make extends Sample{
    Make(){
        star = "*";
    }
    void run(int n){
        for(int i=0; i<n; i++){
            System.out.println( star );
            star += "*";
        }
    }
}