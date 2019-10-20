package pyTest;

import java.io.BufferedReader;
import java.io.InputStreamReader;


public class test {

	public static void main(String[] args) {
		String exec = "python";
		String url = "E:/LqbUser/eclipseWorkSpace/Test/src/py/testhello.py";
		String name = "liuqingbin";
		String age = "21";
		String[] cmd = new String[] {exec, url,name,age};
        try {
        	String cmd2 = "";
            Process process = Runtime.getRuntime().exec(cmd);
            BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream(),"utf-8"));
            BufferedReader erro = new BufferedReader(new InputStreamReader(process.getErrorStream(),"utf-8"));
            String line = null;
            String str = "";
            System.out.println("00000000000000000000000000000000000000000000000");
            while(str!=null){
            	str = in.readLine();
            	System.out.println(str);
            }
           String  str1 = "";
            while(str1!=null){
            	str1 = erro.readLine();
            }
            
           
	        in.close();

	        int re = process.waitFor();  
	        System.out.println(re);
	        if(re == 0){
	        	System.out.println("ִ�гɹ�");
	        }else{
	        	System.out.println("ʧ��");
	        }
	        System.out.println(str);
	       int  num =  process.exitValue();
	       
        } catch (Exception e) {
            e.printStackTrace();
        }  
	}

}
