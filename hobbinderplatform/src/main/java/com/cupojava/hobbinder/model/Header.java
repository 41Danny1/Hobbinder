package com.cupojava.hobbinder.model;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

//StringBuilder contentBuilder = new StringBuilder();
//try {
//	BufferedReader in = new BufferedReader(new FileReader("resources/templates/Header.html"));
//	String str;
//	while ((str = in.readLine()) != null) {
//		contentBuilder.append(str);
//	}
//	in.close();
//} catch (IOException e) {
//}
//
//String content = contentBuilder.toString();
//
//return content;

public class Header {

	public String getTemplate() {
		StringBuilder contentBuilder = new StringBuilder();
		try {
			BufferedReader in = new BufferedReader(new FileReader("src/main/webapp/resources/templates/Header.html"));
			String str;
			while ((str = in.readLine()) != null) {
				contentBuilder.append(str);
			}
			in.close();
		} catch (IOException e) {
		}
		
		String content = contentBuilder.toString();
		
		return content;
	}

}

