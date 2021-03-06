package org.khmerslide.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/rest/category")
public class CategoryController {
	
//	@RequestMapping(value = { "/", "/index", "/home" })
//	public String adminPage() {
//		return "user/index";
//	}
//	
//	@RequestMapping(value = { "/upload-file"})
//	public String uploadPage() {
//		return "user/upload-file";
//	}
//	
//	@RequestMapping(value = { "/history"})
//	public String historyPage() {
//		return "user/view-history";
//	}
//	
//	@RequestMapping(value = { "/my-document"})
//	public String myDocumentPage() {
//		return "user/my-document";
//	}
//	
//	@RequestMapping(value = { "/save-list"})
//	public String saveListPage() {
//		return "user/save-list";
//	}
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;
	
	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> category(
										  @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/category/?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	

}
