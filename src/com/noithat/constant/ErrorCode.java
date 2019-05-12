package com.noithat.constant;

public enum ErrorCode {
	OK(0),	
	Not_OK(-1);
	public final int code;
	//private final String description;
	
	ErrorCode(int code){
		//, String description
	    this.code = code;
	    //this.description = description;
	}
	
	public int getCode(){
		return code; 
	}
}
