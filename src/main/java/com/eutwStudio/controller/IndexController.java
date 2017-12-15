package com.eutwStudio.controller;

import com.eutwStudio.annotation.Log;
import com.eutwStudio.redis.RedisUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController extends BaseController{
	private static final Logger LOG = Logger.getLogger(IndexController.class);

	@Autowired
	private RedisUtil redisUtil;

	@Log("进入index")
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		LOG.info("进入index");
		return "login";
	}

	@RequestMapping(value = "/activeMQTest", method = RequestMethod.GET)
	public String activeMQTest(Model model) {
		return "guest/activeMQTest";
	}


}