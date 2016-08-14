package org.khmerslide.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/rest/save-list")
public class SaveListController {
	
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;
	
	@RequestMapping(value={"/get-savelist"},method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> getSaveList(
										  @RequestParam(value = "page", required = false , defaultValue="1") int page 
									    , @RequestParam(value="item" , required = false , defaultValue="10") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/savelist/get-getsavelist?page=" + page + "&limit="+ item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	

	@RequestMapping(value={"/delete-savelist/{SL_ID}"},method = RequestMethod.DELETE)
	public ResponseEntity<Map<String , Object>> deleteSaveList(
			@PathVariable(value="SL_ID") int SL_ID
			){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/savelist/delete-savelist/"+ SL_ID , HttpMethod.DELETE , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	/*@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> addSaveList(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/savelist/get-getsavelist?page=" , HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}*/
	
}
