package com.adamswedding.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.httpclient.Header;
import org.owasp.esapi.ESAPI;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.adamswedding.entity.Guest;

public class LoginInterceptor implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		
		try {
			System.out.println(request.getRequestURI());
			Guest sessionGuest =null;
			
			try {
				sessionGuest = (Guest) session.getAttribute("guest");
			} catch (Exception e) {
				System.out.println("Session guest is null");
			}
			
			if (sessionGuest != null) {
				System.out.println("Session guest name is " + sessionGuest.getFirstName() + " " + sessionGuest.getLastName());
			}else {
				System.out.println("Session guest is null");
			}
			
			//Add any exclusions here
			if (!request.getRequestURI().startsWith(request.getContextPath() + "/resources") 
					&& !request.getRequestURI().startsWith(request.getContextPath() + "/action"))
				{
				if (session.getAttribute("isRsvpd") != null) {

					System.out.println(session.getAttribute("isRsvpd").toString());
					
					//YES case
					if (!session.getAttribute("isRsvpd").toString().equalsIgnoreCase("yes")
							&& !session.getAttribute("isRsvpd").toString().equalsIgnoreCase("no")) {
						if (!request.getRequestURI().equalsIgnoreCase(request.getContextPath() + "/check")) {
							System.out.println("sending to /check");
							response.sendRedirect(request.getContextPath() + "/check");
						}
						
					//NO Case
					} else if (session.getAttribute("isRsvpd").toString().equalsIgnoreCase("no")) {
						
						if (!request.getRequestURI().equalsIgnoreCase(request.getContextPath() + "/check")) {
							System.out.println("sending to /check");
							response.sendRedirect(request.getContextPath() + "/check");
						}
					}

				} else {
					System.out.println("Setting isRsvpd in else because not found");
					session.setAttribute("isRsvpd", "no");
					response.sendRedirect(request.getContextPath() + "/check");
				} 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		response.setHeader("X-XSS-Protection", "1;mode=block");
	}

}
