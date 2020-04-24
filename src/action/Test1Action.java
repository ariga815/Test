package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class Test1Action {

	public List<String> set(HttpServletRequest request){

		List<String> te1answer = new ArrayList<String>();

		for(int i = 1;i<=40;i++) {
			te1answer.add(request.getParameter("answer"+i));
		}

		return te1answer;
	}

}
