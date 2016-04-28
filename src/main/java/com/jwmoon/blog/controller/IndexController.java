/**
 * @ IndexController.java
 * 
 * Copyright 2016 NHN Techorus Corp. All rights Reserved. 
 * NHN Techorus PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package main.java.com.jwmoon.blog.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <pre>
 * main.java.com.jwmoon.blog.controller
 * IndexController.java 
 * </pre>
 *
 * @brief	: 
 * @author	: 문재웅(jwmoon@nhn-techorus.com)
 * @Date	: 2016. 4. 28.
 */
@Controller
@RequestMapping({ "/", "/index"})
public class IndexController {

	private static final Logger log = Logger.getLogger(IndexController.class);
	
	@RequestMapping({"/", "index"})
	public String showTopPage(){
		log.debug("인덱스 컨트롤러.....");
		return "index";
	}
}
