package org.khmerslide.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

//	@RequestMapping(value = { "/", "/index", "/home" })
//	public String adminPage() {
//		return "admin/index";
//	}
//
//	@RequestMapping(value = { "/user-list" })
//	public String userPage() {
//		return "admin/user-list";
//	}
//
//	@RequestMapping(value = { "/add-user" })
//	public String addUserPage() {
//		return "admin/add-user";
//	}
//
//	@RequestMapping(value = { "/edit-user" })
//	public String editUserPage() {
//		return "admin/edit-user";
//	}
//
//	@RequestMapping(value = { "/doc-list" })
//	public String docPage() {
//		return "admin/doc-list";
//	}
//
//	@RequestMapping(value = { "/slide-list" })
//	public String slidePage() {
//		return "admin/slide-list";
//	}
//
//	@RequestMapping(value = { "/word-list" })
//	public String wordPage() {
//		return "admin/word-list";
//	}

	@RequestMapping(value = { "/pdf-list" })
	public String pdfPage() {
		return "admin/pdf-list";
	}

	@RequestMapping(value = { "/confirm-slide" })
	public String confirmSliePage() {
		return "admin/confirm-slide";
	}

	@RequestMapping(value = { "/confirm-pdf" })
	public String confirmPDFPage() {
		return "admin/confirm-pdf";
	}

	@RequestMapping(value = { "/confirm-word" })
	public String confirmWordPage() {
		return "admin/confirm-word";
	}

	@RequestMapping(value = { "/confirm-doc" })
	public String confirmDocPage() {
		return "admin/confirm-doc";
	}

	@RequestMapping(value = { "/add-doc" })
	public String addDocPage() {
		return "admin/add-doc";
	}

	@RequestMapping(value = { "/edit-doc" })
	public String editDocPage() {
		return "admin/edit-doc";
	}
	@RequestMapping(value = { "/category" })
	public String categoryPage() {
		return "admin/category";
	}
	@RequestMapping(value = { "/save-list" })
	public String saveListPage() {
		return "admin/save-list";
	}
	@RequestMapping(value = { "/comment" })
	public String commentPage() {
		return "admin/comment";
	}
}
