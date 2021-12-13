package myApi;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

// 전체 임포트 ctri + shift + o 
public class SMS {

	public static void main(String[] args) {
		String api_key = "*"; // 자신의API 키 
		String api_secret = "*"; // API SECRET KEY 
		Message coolsms = new Message(api_key, api_secret);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", "*");
		params.put("from", "*");
		params.put("type", "SMS");
		params.put("text", "자바 API 테스트 ");
		params.put("app_version", "test app 2.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
		
		
	}

}
