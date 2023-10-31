/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.logingooogle;

/**
 *
 * @author saeququangsss
 */
public class Constants {
    public static String GOOGLE_CLIENT_ID = "302515428728-rvd41bomn585hq8qup8pvqarfv5jq5n3.apps.googleusercontent.com";
	public static String GOOGLE_CLIENT_SECRET = "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";
	public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/UserManagement_ASM_JSPL/LoginGoogleController";
	public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
	public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
	public static String GOOGLE_GRANT_TYPE = "authorization_code";
}
