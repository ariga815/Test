package action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Test1Action {

	public Map<String, Object> set(String lineStr){

		Map<String,Object> lineData = new HashMap<String,Object>();
		List<String> te1answer = new ArrayList<String>();
		String[] lineInfo = lineStr.split(",");
		String name = null;
		int cnt = 1;
		int testNo = 1;
		int j = 6;

		for(int i = 0;i<=5;i++) {
			if(i==0){
				name = "name";
			} else if(i==1){
				name = "gender";
			} else if(i==2){
				name = "birth";
			} else if(i==3){
				name = "edu";
			} else if(i==4){
				name = "status";
			} else if(i==5){
				name = "sonota";
			}
			lineData.put(name,lineInfo[i]);


		}

		for(int i = 6;i<=169;i++) {
			if(cnt==41){
				lineData.put("test"+testNo, te1answer);
				te1answer = new ArrayList<String>();
				cnt=1;
				testNo++;
			}else {
				if(lineInfo[j].equals("null")){
					lineInfo[j] = null;
				}
				te1answer.add(lineInfo[j]);
				j++;
				cnt++;
			}
		}

		return lineData;
	}

}
