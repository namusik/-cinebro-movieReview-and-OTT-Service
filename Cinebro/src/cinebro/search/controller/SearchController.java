package cinebro.search.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cinebro.actor.model.Actor;
import cinebro.common.controller.SuperClass;
import cinebro.search.model.SearchDao;
import cinebro.common.utility.*;
import cinebro.films.model.Film;
import cinebro.lists.model.FilmList;
import cinebro.members.model.Member;

public class SearchController extends SuperClass {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doGet(request, response);
		
		
		String mode =request.getParameter("mode");
		String keyword = request.getParameter("keyword");
		String pageNumber = request.getParameter("pageNumber");
		
		if(mode==null||mode.equals("")) {
			String gotopage = "/search/searchForm.jsp";
			super.GotoPage(gotopage);
		}else if(mode.equals("film_title")) {
			//request로 넘어온 페이징 정보들을 가지고 객체 생성해줌. 이제 아래서 tostring 하면 문자열이 만들어짐.
			FlowParameters prm = new FlowParameters(mode, keyword, pageNumber);
	
			String contextPath = request.getContextPath();
			String url = contextPath + "/Cinebro?command=search";

			SearchDao dao = new SearchDao();
			//행 row 총 개수 
			int totalCount = dao.SelectTotalCount(mode, keyword);
			
			System.out.println("total data size : "+ totalCount);
			
			Paging pageInfo = new Paging(pageNumber, 
					totalCount, url, 
					mode, keyword);			
	
			List<Film> lists = dao.SearchFilm(pageInfo.getBeginRow(),pageInfo.getEndRow(),mode,keyword);
			System.out.println("board list count : " + lists.size());
			
			request.setAttribute("lists", lists);
			request.setAttribute("pageInfo", pageInfo);			
			//자주 사용되는 파라미터를 속성으로 정의. 게시물 클릭하고 다시 돌아왔을 때 보던 페이지의 정보를 남기기 위해 페이지 관련 정보들을 데이터로 넘겨준다. shopping.utility.flowparameters에서 구체적인 처리를 한다.
			request.setAttribute("parameters", prm.toString());
			
			String gotopage = "/lists/searchList.jsp" ;
			super.GotoPage(gotopage);
			
		}else if(mode.equals("list_title")) {
			//request로 넘어온 페이징 정보들을 가지고 객체 생성해줌. 이제 아래서 tostring 하면 문자열이 만들어짐.
			FlowParameters prm = new FlowParameters(mode, keyword, pageNumber);
	
			String contextPath = request.getContextPath();
			String url = contextPath + "/Cinebro?command=search";
	
			SearchDao dao = new SearchDao();
			//행 row 총 개수 
			int totalCount = dao.SelectListTotalCount(mode, keyword);
			
			System.out.println("total data size : "+ totalCount);
			
			Paging pageInfo = new Paging(pageNumber, 
					totalCount, url, 
					mode, keyword);			
	
			List<FilmList> lists = dao.SearchFilmList(pageInfo.getBeginRow(),pageInfo.getEndRow(),mode,keyword);
			System.out.println("board list count : " + lists.size());
			
			request.setAttribute("lists", lists);
			request.setAttribute("pageInfo", pageInfo);			
			//자주 사용되는 파라미터를 속성으로 정의. 게시물 클릭하고 다시 돌아왔을 때 보던 페이지의 정보를 남기기 위해 페이지 관련 정보들을 데이터로 넘겨준다. shopping.utility.flowparameters에서 구체적인 처리를 한다.
			request.setAttribute("parameters", prm.toString());
			
			String gotopage = "/search/searchListTitle.jsp" ;
			super.GotoPage(gotopage);
		}else if(mode.equals("nickname")){
			//request로 넘어온 페이징 정보들을 가지고 객체 생성해줌. 이제 아래서 tostring 하면 문자열이 만들어짐.
			FlowParameters prm = new FlowParameters(mode, keyword, pageNumber);
	
			String contextPath = request.getContextPath();
			String url = contextPath + "/Cinebro?command=search";
	
			SearchDao dao = new SearchDao();
			//행 row 총 개수 
			int totalCount = dao.SelectMemberTotalCount(mode, keyword);
			
			System.out.println("total data size : "+ totalCount);
			
			Paging pageInfo = new Paging(pageNumber, 
					totalCount, url, 
					mode, keyword);			
	
			List<Member> lists = dao.SearchMember(pageInfo.getBeginRow(),pageInfo.getEndRow(),mode,keyword);
			System.out.println("board list count : " + lists.size());
			
			request.setAttribute("lists", lists);
			request.setAttribute("pageInfo", pageInfo);			
			//자주 사용되는 파라미터를 속성으로 정의. 게시물 클릭하고 다시 돌아왔을 때 보던 페이지의 정보를 남기기 위해 페이지 관련 정보들을 데이터로 넘겨준다. shopping.utility.flowparameters에서 구체적인 처리를 한다.
			request.setAttribute("parameters", prm.toString());
			
			String gotopage = "/search/searchMember.jsp" ;
			super.GotoPage(gotopage);
		}else if(mode.equals("name")) {
			//request로 넘어온 페이징 정보들을 가지고 객체 생성해줌. 이제 아래서 tostring 하면 문자열이 만들어짐.
			FlowParameters prm = new FlowParameters(mode, keyword, pageNumber);
	
			String contextPath = request.getContextPath();
			String url = contextPath + "/Cinebro?command=search";
	
			SearchDao dao = new SearchDao();
			//행 row 총 개수 
			int totalCount = dao.SelectActorsTotalCount(mode, keyword);
			
			System.out.println("total data size : "+ totalCount);
			
			Paging pageInfo = new Paging(pageNumber, 
					totalCount, url, 
					mode, keyword);			
	
			List<Actor> lists = dao.SearchActor(pageInfo.getBeginRow(),pageInfo.getEndRow(),mode,keyword);
			System.out.println("board list count : " + lists.size());
			
			request.setAttribute("lists", lists);
			request.setAttribute("pageInfo", pageInfo);			
			//자주 사용되는 파라미터를 속성으로 정의. 게시물 클릭하고 다시 돌아왔을 때 보던 페이지의 정보를 남기기 위해 페이지 관련 정보들을 데이터로 넘겨준다. shopping.utility.flowparameters에서 구체적인 처리를 한다.
			request.setAttribute("parameters", prm.toString());
			
			String gotopage = "/search/searchActor.jsp" ;
			super.GotoPage(gotopage);
		}
	
	}	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doPost(request, response);

	}
}
