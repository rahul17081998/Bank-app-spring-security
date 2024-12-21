import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class MapDemo1 {

    public static void main(String[] args) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(4);
        arrayList.add(4);
        arrayList.add(14);
        arrayList.add(32);
        arrayList.add(32);
        arrayList.add(32);
        arrayList.add(13);
        arrayList.add(4);
        arrayList.add(7);
        arrayList.add(32);
        arrayList.add(23);
        arrayList.add(13);
        arrayList.add(52);
        arrayList.add(23);

        Map<Integer, Integer> mp = new HashMap<>();
        for(var num: arrayList){
            mp.put(num, mp.getOrDefault(num, 0)+1);
        }

        int i=3;

        while(i>0){
//            find the highest frequency element in the arr
            int miniVal= Integer.MIN_VALUE, number=-1;
            for(var keyVal: mp.entrySet()){
                if(miniVal<keyVal.getValue()){
                    number = keyVal.getKey();
                    miniVal = keyVal.getValue();
                }
            }
            if(miniVal!=Integer.MIN_VALUE){
                mp.remove(number);
            }
            System.out.println("num: "+number+"   count:"+miniVal);
            i--;
        }



    }
}
