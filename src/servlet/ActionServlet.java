package servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Chart;
import action.ExamineeInfo;
import action.FileDownload;
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

	//受験者一覧
	private List<Map<String,Object>> examineeInfoList;
	private Map<String,Object> examineeInfo;

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
        try {
			this.process(request, response);
		} catch (ParseException | URISyntaxException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServslet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.setContentType("text/html; charset=utf-8");
        request.setCharacterEncoding("utf-8");
        try {
			this.process(request, response);
		} catch (ParseException | URISyntaxException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	}

	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException, URISyntaxException {
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
            case "examineeInfo":
            	examineeInfoList = ExamineeInfo.ExamineeInfoGet();
            	if(examineeInfoList==null || examineeInfoList.size() == 0){
                	request.setAttribute("err", "受験者情報が存在しません");
            	}
            	request.setAttribute("ExamineeInfoList", examineeInfoList);
            	request.setAttribute("flg", "1");
                url = "/examineeInfo.jsp";
                break;
            case "chart":
            	if(request.getParameter("examineeId")==null || request.getParameter("examineeId").equals("")){
                	request.setAttribute("ExamineeInfoList", examineeInfoList);
                	request.setAttribute("flg", "1");
                	request.setAttribute("err", "受験者を選択してください");
            		url = "/examineeInfo.jsp";
                    break;
            	}
            	examineeInfo = Chart.chart(examineeInfoList, request.getParameter("examineeId"));
            	if(examineeInfo.get("err") !=null && examineeInfo.get("err").equals("1")){
            		request.setAttribute("ExamineeInfoList", examineeInfoList);
                	request.setAttribute("flg", "1");
                	request.setAttribute("err", "データが不正のため、診断表を表示できません");
                	url = "/examineeInfo.jsp";
                    break;
            	}
            	request.setAttribute("ExamineeInfo", examineeInfo);
                url = "/chart.jsp";
                break;
            case "download":
            	String err = FileDownload.fileDownload(response);
            	if(err != null && err.equals("1")){
            		request.setAttribute("err", "解答結果のダウンロードができませんでした");
            	}
            	request.setAttribute("ExamineeInfoList", examineeInfoList);
            	request.setAttribute("flg", "1");
                url = "/examineeInfo.jsp";
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
