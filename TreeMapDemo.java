public class TreeMapDemo {
    public static void main(String[] args) {
        double sum=0.0;
        for(String s: args){
            if(s.matches("[0-9\\.]+")) // check if string is a number
                sum = sum + Double.parseDouble(s);
        }
        System.out.println("sum = "+sum);
    }
}
