package servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.FormAction;

/**
 * Servlet implementation class ActionServlet
 */
@WebServlet("/ActionServlet")
public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Map<String,Object> lineData;

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
            		request.setAttribute("flg", "0");
            		url = "/Test1_info.jsp";
            		break;
            	}
            	request.setAttribute("meMap", meMap);
                url = "/form.jsp";
                break;
            case "GoToTest1":
            	url = "/Test1.jsp";
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
