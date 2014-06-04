package passion;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.site.SitePreference;
import org.springframework.mobile.device.view.LiteDeviceDelegatingViewResolver;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * Handles requests for the application home page.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { 
		"classpath:config/context-aspect.xml",
		"classpath:config/context-common.xml",
		"classpath:config/context-mybatis.xml",
		"classpath:config/context-transaction.xml"
	})
public class HomeControllerTestApp {
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeControllerTestApp.class);
	
	public HomeControllerTestApp() {
		// TODO Auto-generated constructor stub
		System.out.println("__________________________");
    	System.out.println("___Home_Controller_Call___");
    	System.out.println("__________________________");
	}
	
	@RequestMapping(value = "/home")
	public String home(Locale locale, Model model) {
		return "web/home";
	}
	
	@RequestMapping(value = "/start")
	public ModelAndView start(Locale locale, Model model) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/start");
		return modelAndView;
	}

	
	
	/*
	@RequestMapping(value = "/googleMap")
	public String googlemap(Locale locale, Model model) {
		return "googleMap";
	}
	*/
	
	//----------------테스트용 코드
	@RequestMapping(value = "/test")//, method = RequestMethod.GET
	public String testHome(Locale locale, Model model) {
		return "index_test";
	}
	
	@RequestMapping(value = "/effect")//, method = RequestMethod.GET
	public String effectTest(Locale locale, Model model) {
		return "/test/effect";
	}
	//----------------테스트용 코드
	/*
	@RequestMapping("/")
	public void home(Device device) {
        if (device.isMobile()) {
            logger.info("Hello mobile user!");
        } else if (device.isTablet()) {
            logger.info("Hello tablet user!");
        } else {
            logger.info("Hello desktop user!");         
        }
	}
	
	@Bean
	public LiteDeviceDelegatingViewResolver liteDeviceAwareViewResolver() {
	    InternalResourceViewResolver delegate = 
	            new InternalResourceViewResolver();
	    delegate.setPrefix("/WEB-INF/views/");
	    delegate.setSuffix(".jsp");
	    LiteDeviceDelegatingViewResolver resolver = 
	            new LiteDeviceDelegatingViewResolver(delegate);
	    resolver.setMobilePrefix("mobile/");
	    resolver.setTabletPrefix("tablet/");
	    return resolver;
	}
	*/
	@RequestMapping("/")
    public String home(SitePreference sitePreference, Model model) {
		System.out.println("들어오긴함?");
		if (sitePreference == SitePreference.NORMAL) {
            logger.info("Site preference is normal");
            return "web/home";
        } else if (sitePreference == SitePreference.MOBILE) {
            logger.info("Site preference is mobile");
            return "home-mobile";
        } else if (sitePreference == SitePreference.TABLET) {
            logger.info("Site preference is tablet");
            return "home-tablet";
        } else {
            logger.info("no site preference");
            return "web/home";
        }
    }
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	*/
}
