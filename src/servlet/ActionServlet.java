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
import action.LoginInfo;
import action.LoginInfoFormAction;
import action.OutputCsvAction;
import action.Test1Action;
import constants.Constants;

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

	private String userId;
	private String pass;
	private String flg;
	private String changeflg;

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

        // 初期表示画面
        if(action==null || action.equals("")) {
        	url = "/WEB-INF/examLogin.jsp";
        // 管理者ログイン画面からログインした場合
        }  else if(action.equals("adminLogin")) {
        	userId = request.getParameter("userId");
        	pass = request.getParameter("password");
    		if(userId==null || userId.equals("") || pass==null || pass.equals("")){
    			request.setAttribute("err", "ユーザID/パスワードを入力してください");
    			url = "/adminLogin.jsp";
    		} else if(userId.equals(Constants.adminUserId) && pass.equals(Constants.adminPass)){
    			// 管理者用画面・受験者用画面へ遷移できるフラグ
    			flg = "1";

    			examineeInfoList = ExamineeInfo.ExamineeInfoGet();
    			if(examineeInfoList==null || examineeInfoList.size() == 0){
    				request.setAttribute("err", "受験者情報が存在しません");
    			}
    			request.setAttribute("ExamineeInfoList", examineeInfoList);
    			request.setAttribute("flg", "1");
    			url = "/WEB-INF/examineeInfo.jsp";
    		} else {
    			request.setAttribute("err", "正しいユーザID/パスワードを入力してください");
    			url = "/adminLogin.jsp";
    		}
        // 受験者ログイン画面からログインした場合
		} else if(action.equals("examLogin")) {
			userId = request.getParameter("userId");
        	pass = request.getParameter("password");
    		if(userId==null || userId.equals("") || pass==null || pass.equals("")){
    			request.setAttribute("err", "ユーザID/パスワードを入力してください");
    			url = "/WEB-INF/examLogin.jsp";
    		} else if(userId.equals(Constants.examUserId) && pass.equals(Constants.examPass)){
    			// 受験者用画面へのみ遷移できるフラグ
    			flg = "0";

        		url = "/WEB-INF/top.jsp";
        	} else {
        		request.setAttribute("err", "正しいユーザID/パスワードを入力してください");
        		url = "/WEB-INF/examLogin.jsp";
        	}
    	// ログインしていない場合、受験者ログイン画面へ
		} else if(userId==null || userId.equals("") || pass==null || pass.equals("")) {
        	url = "/WEB-INF/examLogin.jsp";
        } else {
        	// 管理者用画面
			if(flg!=null && flg.equals("1")){
				switch(action){
				case "examineeInfo":
					examineeInfoList = ExamineeInfo.ExamineeInfoGet();
					if(examineeInfoList==null || examineeInfoList.size() == 0){
						request.setAttribute("err", "受験者情報が存在しません");
					}
					request.setAttribute("ExamineeInfoList", examineeInfoList);
					request.setAttribute("flg", "1");
					url = "/WEB-INF/examineeInfo.jsp";
					break;
				case "chart":
					if(request.getParameter("examineeId")==null || request.getParameter("examineeId").equals("")){
						request.setAttribute("ExamineeInfoList", examineeInfoList);
						request.setAttribute("flg", "1");
						request.setAttribute("err", "受験者を選択してください");
						url = "/WEB-INF/examineeInfo.jsp";
						break;
					}
					examineeInfo = Chart.chart(examineeInfoList, request.getParameter("examineeId"));
					if(examineeInfo.get("err") !=null && examineeInfo.get("err").equals("1")){
						request.setAttribute("ExamineeInfoList", examineeInfoList);
						request.setAttribute("flg", "1");
						request.setAttribute("err", "データが不正のため、診断表を表示できません");
						url = "/WEB-INF/examineeInfo.jsp";
						break;
					}
					request.setAttribute("ExamineeInfo", examineeInfo);
					url = "/WEB-INF/chart.jsp";
					break;
				case "download":
					String err = FileDownload.fileDownload(response);
					if(err != null && err.equals("1")){
						request.setAttribute("err", "解答結果のダウンロードができませんでした");
					}
					request.setAttribute("ExamineeInfoList", examineeInfoList);
					request.setAttribute("flg", "1");
					url = "/WEB-INF/examineeInfo.jsp";
					break;
				case "logout":
					url = "/adminLogin.jsp";
					break;
				case "loginInfo":
					url = "/WEB-INF/loginInfo.jsp";
					break;
				case "newcreate":
					changeflg = "0";
					request.setAttribute("changeflg", changeflg);
					url = "/WEB-INF/loginInfo.jsp";
					break;
				case "change":
					changeflg = "1";
					request.setAttribute("changeflg", changeflg);
					url = "/WEB-INF/loginInfo.jsp";
					break;
				case "registration":
					LoginInfoFormAction loginForm = new LoginInfoFormAction();
					lineData = loginForm.set(request);
	            	Map<String,String> meMap = loginForm.vali();
	            	if(changeflg.equals("0")){
	            		meMap.remove("nowPassMe");
	            	}
	            	if(meMap.isEmpty()) {
						err = LoginInfo.loginInfoChange(lineData, changeflg);
						request.setAttribute("changeflg", changeflg);
						if(err!=null){
							request.setAttribute("err",err);
			                url = "/WEB-INF/loginInfo.jsp";
			                break;
						}
	            		url = "/WEB-INF/loginInfoResult.jsp";
	            		break;
	            	}
	            	request.setAttribute("meMap", meMap);
	            	request.setAttribute("changeflg", changeflg);
	                url = "/WEB-INF/loginInfo.jsp";
	                break;

				default:
	            	url = "/adminLogin.jsp";
					break;
				}
			//基礎学力テスト画面
			} else if(flg!=null && flg.equals("0")){
				switch(action){
	            case "top":
	                url = "/WEB-INF/form.jsp";
	                break;
	            case "form":
	            	FormAction ac = new FormAction();
	            	lineData = ac.set(request);
	            	Map<String,String> meMap = ac.vali();

	            	if(meMap.isEmpty()) {
	            		url = "/WEB-INF/Test1_info.jsp";
	            		//不正防止のため受験者情報のみCSV出力
	                	oCA.outUserDataCsv(lineData);
	            		break;
	            	}
	            	request.setAttribute("meMap", meMap);
	                url = "/WEB-INF/form.jsp";
	                break;
	            case "GoToTest1":
	            	url = "/WEB-INF/Test1.jsp";
	                break;
	            case "Test1_submit":
	            	Test1Action te1 = new Test1Action();
	            	List<String> te1List = te1.set(request);
	            	lineData.put("test1",te1List);
	            	url = "/WEB-INF/Test2_info.jsp";
	                break;
	            case "GoToTest2":
	            	url = "/WEB-INF/Test2.jsp";
	                break;
	            case "Test2_submit":
	            	Test1Action te2 = new Test1Action();
	            	List<String> te2List = te2.set(request);
	            	lineData.put("test2",te2List);
	            	url = "/WEB-INF/Test3_info.jsp";
	                break;
	            case "GoToTest3":
	            	url = "/WEB-INF/Test3.jsp";
	                break;
	            case "Test3_submit":
	            	Test1Action te3 = new Test1Action();
	            	List<String> te3List = te3.set(request);
	            	lineData.put("test3",te3List);
	            	url = "/WEB-INF/Test4_info.jsp";
	                break;
	            case "GoToTest4":
	            	url = "/WEB-INF/Test4.jsp";
	                break;
	            case "Test4_submit":
	            	Test1Action te4 = new Test1Action();
	            	List<String> te4List = te4.set(request);
	            	lineData.put("test4",te4List);
	            	url = "/WEB-INF/end.jsp";
	            	//CSV出力（解答）
	            	oCA.outResultCsv(lineData);
	            	//CSV出力（正答率）
	            	oCA.outRateCsv(lineData);
	                break;

	            default:
	            	url = "/WEB-INF/examLogin.jsp";
	                break;
				}
        	} else {
            	url = "/WEB-INF/examLogin.jsp";
            }
        }

        RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);

	}

}
