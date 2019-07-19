package com.ezen.antpeople.config;

import java.util.EnumSet;

import javax.servlet.DispatcherType;
import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.filter.DelegatingFilterProxy;
import org.springframework.web.servlet.DispatcherServlet;

<<<<<<< HEAD
import com.ezen.antpeople.controller.page.ServletConfigurationPage;
=======
import com.ezen.antpeople.controller.admin.ServletConfigurationAdmin;
import com.ezen.antpeople.controller.main.ServletConfigurationMain;
import com.ezen.antpeople.controller.staff.ServletConfigurationStaff;
>>>>>>> cf423e6e19bf805e712e66a5122c9cb4ff25dc6d
import com.ezen.antpeople.controller.user.ServletConfigurationUser;

public class WebInitializer implements WebApplicationInitializer{
        @Override
        public void onStartup(ServletContext servletContext) throws ServletException {    
        	
        	// RootAppContext - WebApplicationContext
    		AnnotationConfigWebApplicationContext rootAppContext = new AnnotationConfigWebApplicationContext();
    		rootAppContext.setConfigLocation("com.ezen.antpeople.config");
    		ContextLoaderListener listener = new ContextLoaderListener(rootAppContext);
    		servletContext.addListener(listener);
            //-------------------------------------------
    		
    		// ServeltContext_Main - WebApplicationContext
            AnnotationConfigWebApplicationContext ServletPageContext = new AnnotationConfigWebApplicationContext();
            ServletPageContext.register(ServletConfigurationPage.class);
            
            ServletRegistration.Dynamic dispatcherPage = servletContext.addServlet("DispatcherServletPage", new DispatcherServlet(ServletPageContext));
            dispatcherPage.setLoadOnStartup(1);
            dispatcherPage.addMapping("/page/*");
            //----------------------------------------------
            
            // ServeltContext_User - WebApplicationContext
            AnnotationConfigWebApplicationContext servletUserContext = new AnnotationConfigWebApplicationContext();
            servletUserContext.register(ServletConfigurationUser.class);

    		ServletRegistration.Dynamic dispatcherUser = servletContext.addServlet("DispatcherServletUser", new DispatcherServlet(servletUserContext));
    		dispatcherUser.setLoadOnStartup(2);
    		dispatcherUser.addMapping("/user/*");
<<<<<<< HEAD
=======
    		//-----------------------------------------------
    		
    		// ServeltContext_Admin - WebApplicationContext
    		AnnotationConfigWebApplicationContext servletAdminContext = new AnnotationConfigWebApplicationContext();
    		servletAdminContext.register(ServletConfigurationAdmin.class);
    		
    		ServletRegistration.Dynamic dispatcherAdmin = servletContext.addServlet("DispatcherServletAdmin", new DispatcherServlet(servletAdminContext));
    		dispatcherAdmin.setLoadOnStartup(3);
    		dispatcherAdmin.addMapping("/admin/*");
    		//-----------------------------------------------
    		
    		// ServeltContext_Staff - WebApplicationContext
    		AnnotationConfigWebApplicationContext servletStaffContext = new AnnotationConfigWebApplicationContext();
    		servletStaffContext.register(ServletConfigurationStaff.class);
    		
    		ServletRegistration.Dynamic dispatcherStaff = servletContext.addServlet("DispatcherServletStaff", new DispatcherServlet(servletStaffContext));
    		dispatcherStaff.setLoadOnStartup(4);
    		dispatcherStaff.addMapping("/staff/*");
>>>>>>> cf423e6e19bf805e712e66a5122c9cb4ff25dc6d
    		//-----------------------------------------------
    		
    		// spring security 필터 적용
            FilterRegistration fr = servletContext.addFilter("springSecurityFilterChain", 
            		new DelegatingFilterProxy("springSecurityFilterChain"));  
            fr.addMappingForUrlPatterns(null, false, "/*");  
    		
            // 인코딩 필터 적용
            FilterRegistration.Dynamic charaterEncodingFilter = servletContext.addFilter("charaterEncodingFilter", new CharacterEncodingFilter());
            charaterEncodingFilter.addMappingForUrlPatterns(EnumSet.allOf(DispatcherType.class), true, "/*");
            charaterEncodingFilter.setInitParameter("encoding", "UTF-8");
            charaterEncodingFilter.setInitParameter("forceEncoding", "true");
        }    
    }

