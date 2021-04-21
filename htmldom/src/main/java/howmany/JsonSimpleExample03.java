package howmany;

/* JSON 파일 내용물 
  {
   "firstName": "Joe",
   "lastName": "Jackson",
   "gender": "male",
   "age": 28,
   "address": {
       "streetAddress": "101",
       "city": "San Diego",
       "state": "CA"
   },
   "phoneNumbers": [
       { "type": "home", "number": "7349282382" }
   ]
 }
 * */

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectInputStream.GetField;
import java.io.Reader;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class JsonSimpleExample03 {

	public static void main(String[] args) {

		JSONParser parser = new JSONParser();

		try (Reader reader = new FileReader("C:\\NamDawon\\sample2.json")) {

			JSONObject jsonObject = (JSONObject) parser.parse(reader);
			System.out.println(jsonObject);

			String name = (String) jsonObject.get("firstName");
			System.out.println(name);

			long age = (Long) jsonObject.get("age");
			System.out.println(age);

			
			// loop array
			// https://alencion.tistory.com/8

			JSONArray msg = (JSONArray) jsonObject.get("phoneNumbers");
			System.out.println(msg);

			JSONObject object = (JSONObject) msg.get(1);
//            System.out.println(object);

			for (Object obj : msg) {
				System.out.println(obj);
			}
			/*
			 * 1. length - arrays(int[], double[], String[])
			 * 
			 * - length는 배열의 길이를 알고자 할때 사용된다.
			 * 
			 * 2. length() - String related Object(String, StringBuilder etc)
			 * 
			 * - length()는 문자열의 길이를 알고자 할때 사용된다.
			 * 
			 * 3. size() - Collection Object(ArrayList, Set etc)
			 * 
			 * - size()는 컬렉션프레임워크 타입의 길이를 알고자 할때 사용된다.
			 */
			
			for (int i = 0; i < msg.size(); i++) {
				object = (JSONObject) msg.get(i);
				String number = (String) object.get("number");
				System.out.println(number);
			}

		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}