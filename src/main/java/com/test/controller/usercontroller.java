package com.test.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.test.dao.userDao;
import com.test.entity.user;
import com.test.service.UserService;

@Controller
public class usercontroller {
	@Autowired
	private UserService userservice;

	@GetMapping("/")
	public String loadForm() {

		return "register";

	}

	@PostMapping("/savereg")
	public String userRegistration(user user, Model model, HttpSession hs) {

		System.out.println(user);
		int id = userservice.saveuser(user);
		model.addAttribute("id", id);
		hs.setAttribute("regsuc", "Registration Success ! with ID : " + id);
		return "login";

	}

	@GetMapping("/login")
	public String showlogin() {

		return "login";
	}

	@PostMapping("/checklogin")
	public String checklogin(user user, Model model, HttpSession hs) {

		if (userservice.checkloginservice(user)) {
			model.addAttribute("user", user);
			System.out.println(user);

			hs.setAttribute("message", "login successful !");

			return "redirect:/home";
		}

		hs.setAttribute("error", "Login Failed !! Incorrect Username and Password ");
		return "login";

	}

	@GetMapping("/home")
	public String getalldata(Model model) {

		List<user> all = userservice.getalldata();

		model.addAttribute("list", all);

		return "home";

	}

	//////////////////////////////////////////////////////////////
	@GetMapping("/display/{id}")
	public String displayuser(@PathVariable int id, Model m) {

		user user = userservice.getuser(id);
		m.addAttribute("user", user);

		return "display";

	}

	@GetMapping("/update")
	public String preupdate() {

		return "updateform";

	}

	@PostMapping("/updateuser")
	public String updateform(user user) {
		System.out.println(user);
		
		userservice.updateuser(user);

		return "redirect:home";

	}
	
	@GetMapping("/deletebyid/{id}")
	public String delete(@PathVariable int id) {
		
		userservice.deletebyid(id);
		
		
		return "redirect:/home";
		
		
		
	}
	
	
	
	
	

}
