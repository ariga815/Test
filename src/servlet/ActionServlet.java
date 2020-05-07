package servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.FormAction;
import action.OutputCsvAction;
import action.Test1Action;

/**
 * Servlet implementation class ActionServlet
 */
@WebServlet("/ActionServlet")
public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Map<String,Object> lineData;
	private OutputCsvAction oCA = new OutputCsvAction();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.setContentType("text/html; charset=utf-8");
        request.setCharacterEncoding("utf-8");
		this.process(request, response);
	}

	/**
	 * @see HttpServslet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.setContentType("text/html; charset=utf-8");
        request.setCharacterEncoding("utf-8");
		this.process(request, response);
	}

	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String action = request.getParameter("action");

        // 遷移先
        String url = null;

        if(action==null || action=="") {
        	url = "/top.jsp";
        }else {
        	switch(action){
            case "top":
                url = "/form.jsp";
                break;
            case "form":
            	FormAction ac = new FormAction();
            	lineData = ac.set(request);
            	Map<String,String> meMap = ac.vali();

            	if(meMap.isEmpty()) {
            		url = "/Test1_info.jsp";
            		//不正防止のため受験者情報のみCSV出力
                	oCA.outUserDataCsv(lineData);
            		break;
            	}
            	request.setAttribute("meMap", meMap);
                url = "/form.jsp";
                break;
            case "GoToTest1":
            	url = "/Test1.jsp";
                break;
            case "Test1_submit":
            	Test1Action te1 = new Test1Action();
            	List<String> te1List = te1.set(request);
            	lineData.put("test1",te1List);
            	url = "/Test2_info.jsp";
                break;
            case "GoToTest2":
            	url = "/Test2.jsp";
                break;
            case "Test2_submit":
            	Test1Action te2 = new Test1Action();
            	List<String> te2List = te2.set(request);
            	lineData.put("test2",te2List);
            	url = "/Test3_info.jsp";
                break;
            case "GoToTest3":
            	url = "/Test3.jsp";
                break;
            case "Test3_submit":
            	Test1Action te3 = new Test1Action();
            	List<String> te3List = te3.set(request);
            	lineData.put("test3",te3List);
            	url = "/Test4_info.jsp";
                break;
            case "GoToTest4":
            	url = "/Test4.jsp";
                break;
            case "Test4_submit":
            	Test1Action te4 = new Test1Action();
            	List<String> te4List = te4.set(request);
            	lineData.put("test4",te4List);
            	url = "/end.jsp";
            	//CSV出力（解答）
            	oCA.outResultCsv(lineData);
            	//CSV出力（正答率）
            	oCA.outRateCsv(lineData);
                break;

            default:
            	url = "/top.jsp";
                break;
        	}
        }


        RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);

	}

}
