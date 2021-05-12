package cinebro.reviews.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cinebro.common.controller.SuperClass;
import cinebro.reviews.model.Review;
import cinebro.reviews.model.ReviewDao;

public class ReviewDetailController extends SuperClass {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doGet(request, response);
		Review bean = new Review();
		ReviewDao dao = new ReviewDao();
		bean = dao.selectReview(request.getParameter("id"));
		
		request.setAttribute("bean", bean);
		String gotopage = "/reviews/reviewDetail.jsp";
		super.GotoPage(gotopage);
		
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doPost(request, response);
	}	
}
