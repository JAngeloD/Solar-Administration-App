/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter implements Filter
{
    @Override
    public void doFilter( ServletRequest request, ServletResponse response, FilterChain chain ) throws IOException, ServletException
    {
        HttpServletRequest httpRequest = (HttpServletRequest)request;
        HttpSession session = httpRequest.getSession();
        String username = (String)session.getAttribute( "username" );
        
        if( username == null || username.isEmpty() )
        {
            HttpServletResponse httpResponse = (HttpServletResponse)response;
            httpResponse.sendRedirect( "login" );
            return;
        }
        
        chain.doFilter( request, response );
    }
    
    @Override
    public void destroy() {}

    @Override
    public void init( FilterConfig filterConfig ) {}
}
