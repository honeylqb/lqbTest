package pyTest;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
 
public class testPython {
	
	public static void main(String[] args) {
		String exec = "python";
		String url = "E:/LqbUser/eclipseWorkSpace//Test/src/test/java/py/testhello.py";
		String name = "liuqingbin";
		String age = "21";
		String[] cmd = new String[] {exec, url,name,age};
        try {
        	String cmd2 = "";
            Process process = Runtime.getRuntime().exec(cmd);
            BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream(),"utf-8"));
            String line = null;
	        while ((line = in.readLine()) != null) {  
	        	if(line.equals("#")){
	        		System.out.println("---------#分割------------");
	        	}
	        	if(line.equals("")){
	        		System.out.println("回车");
	        	}
	            System.out.println(line);  
	        }  

	        in.close();
	        	//判断程序运行是否成功
	        int re = process.waitFor();  
	        System.out.println(re);
	        if(re == 0){
	        	System.out.println("成功");
	        }else{
	        	System.out.println("失败");
	        }
	        System.out.println("-------------------------");
        } catch (Exception e) {
            e.printStackTrace();
        }  
	}
	
}
