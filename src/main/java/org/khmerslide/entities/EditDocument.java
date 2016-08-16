package org.khmerslide.entities;

import com.fasterxml.jackson.annotation.JsonProperty;

public class EditDocument {
	@JsonProperty("DOC_TITLE")
	private String doc_title;
	
	@JsonProperty("DESCRIPTION")
	private String doc_description;
	
	@JsonProperty("STATUS")
	private int doc_status;
	
	@JsonProperty("DOC")
	private int doc_type;
	
	@JsonProperty("USER")
	private int user_type;
	
	@JsonProperty("CATEGORY")
	private int cat_id;
	
	@JsonProperty("THUMBNAIL")
	private String doc_thumnail;
	
	@JsonProperty("SOURCE")
	private String doc_source;

	public String getDoc_title() {
		return doc_title;
	}

	public void setDoc_title(String doc_title) {
		this.doc_title = doc_title;
	}

	public String getDoc_description() {
		return doc_description;
	}

	public void setDoc_description(String doc_description) {
		this.doc_description = doc_description;
	}

	public int getDoc_status() {
		return doc_status;
	}

	public void setDoc_status(int doc_status) {
		this.doc_status = doc_status;
	}

	public int getDoc_type() {
		return doc_type;
	}

	public void setDoc_type(int doc_type) {
		this.doc_type = doc_type;
	}

	public int getUser_type() {
		return user_type;
	}

	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}

	public int getCat_id() {
		return cat_id;
	}

	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}

	public String getDoc_thumnail() {
		return doc_thumnail;
	}

	public void setDoc_thumnail(String doc_thumnail) {
		this.doc_thumnail = doc_thumnail;
	}

	public String getDoc_source() {
		return doc_source;
	}

	public void setDoc_source(String doc_source) {
		this.doc_source = doc_source;
	}
}
//{
//	  "DOC_TITLE": "string",
//	  "DESCRIPTION": "string",
//	  "STATUS": 0,
//	  "DOC": 0,
//	  "USER": 0,
//	  "CATEGORY": 0,
//	  "THUMBNAIL": "string",
//	  "SOURCE": "string"
//	}