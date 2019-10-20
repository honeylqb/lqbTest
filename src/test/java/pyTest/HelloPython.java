package pyTest;

import java.io.BufferedReader;
import java.io.InputStreamReader;
 
public class HelloPython {
	/**
	 * 
	 * ������
	 * @param args
	 */
	public static void main(String[] args) {
		
		String[] arguments = new String[] {"python", "E:/LqbUser/eclipseWorkSpace/Test/src/test/java/py/holle.py"};
        System.out.println("----------1--------------");
		try {
            Process process = Runtime.getRuntime().exec(arguments);
            BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream(),"utf-8"));
            String line = null;
	        System.out.println("--------2----------------");
	        while ((line = in.readLine()) != null) {  
	            System.out.println(line);  
	        }  
	        in.close();
	        System.out.println("--------3----------------");
	        //java�����е�process.waitFor()����ֵΪ0��ʾ���ǵ���python�ű��ɹ���
            //����ֵΪ1��ʾ����python�ű�ʧ�ܣ��������ͨ�������ϼ�����0��1���������෴
	        int re = process.waitFor();  
	        System.out.println(re);
        } catch (Exception e) {
            e.printStackTrace();
        }  
	}
}

