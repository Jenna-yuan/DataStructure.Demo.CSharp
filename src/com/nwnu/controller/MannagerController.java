package com.nwnu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nwnu.pojo.Mannager;
import com.nwnu.service.MannagerService;

@Controller
public class MannagerController {
	@Autowired
	private MannagerService mannagerService;

	@RequestMapping("/admin")
	public String admin(String name, String password, Model model, HttpSession session) {
		// ͨ���û��˺ź���������û�
		Mannager mannager = mannagerService.findMannager(name, password);
		if (mannager != null) {
			// ���û�������ӵ�Session
			session.setAttribute("USER_SESSION", mannager);
			model.addAttribute("mannager", mannager);
			// ��ת����ҳ��
			return "redirect:listStudent";
		}
		// ���ص���¼����
		model.addAttribute("msg", "�˺Ż������������������");
		return "admin";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// ���Session
		session.invalidate();
		// ҳ���ض���
		return "redirect:admin";
	}
}
