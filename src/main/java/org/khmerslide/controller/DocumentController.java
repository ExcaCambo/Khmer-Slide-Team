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
@RequestMapping("/rest/document-list")
public class DocumentController {

	@Autowired
	private HttpHeaders header;

	@Autowired
	private RestTemplate rest;

	@Autowired
	private String WS_URL;

	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> document(
			@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "item", required = false, defaultValue = "10") int item) {
		System.out.println("Test");
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		// ResponseEntity<Map> response =
		// rest.exchange("http://localhost:9999/api/category/get-category?page=1&limit=10",
		// HttpMethod.GET , request , Map.class) ;
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/docs/get-document?page=" + page + "&limit=" + item,
				HttpMethod.GET, request, Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
	}

	@RequestMapping(value = { "/delete-document/{DOC_ID}" }, method = RequestMethod.DELETE)
	public ResponseEntity<Map<String, Object>> deleteDocument(@PathVariable(value = "DOC_ID") int DOC_ID) {
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/docs/delete-document/" + DOC_ID, HttpMethod.DELETE,
				request, Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
	}

	@RequestMapping(value = { "/get-document-id/{DOC_ID}" }, method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getDocumentId(@PathVariable(value = "DOC_ID") int DOC_ID) {
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/docs/get-document-by-id/{doc_id}?doc_id=" + DOC_ID, HttpMethod.GET,
				request, Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
	}

}
