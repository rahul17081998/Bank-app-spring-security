import java.util.*;
import java.util.stream.Collectors;

public class SetAndMapDemo {

    public static void main(String[] args) {
        List<String> strList = Arrays.asList("sila", "munni", "mango", "orange", "munni", "lalu", "mango");
        Set<String> st = new HashSet<>();

        List<String> arr = new ArrayList<>();



//        for(int i=0; i< strList.size(); i++){
//            if(!st.contains(strList.get(i))){
//                arr.add(strList.get(i));
//                st.add(strList.get(i));
//            }
//        }
//        System.out.println(arr);

        // use stream api
        List<String> uniqueStrings=strList.stream()
                .filter(s->{
                    if(!st.contains(s)){
                        st.add(s);
                        return true;
                    }else{
                        return false;
                    }
                })
                .collect(Collectors.toList());

        System.out.println(uniqueStrings);
    }
}
