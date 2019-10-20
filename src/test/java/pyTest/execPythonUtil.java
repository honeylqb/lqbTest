package pyTest;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

public class execPythonUtil {
	public static void main(String[] args) {
	
		docmd();
}

	static void docmd() {
		String[] command = { "cmd", };
		Process p = null;
		try {
			p = Runtime.getRuntime().exec(command);
			new Thread(new SyncPipe(p.getErrorStream(), System.err)).start();
			new Thread(new SyncPipe(p.getInputStream(), System.out)).start();
			PrintWriter stdin = new PrintWriter(p.getOutputStream());

			stdin.println("python "+" E:/LqbUser/eclipseWorkSpace/Test/src/py/testhello.py "+" liuqingbin"+" 121");//姝ゅ鑷濉啓锛屽垏璁版湁绌烘牸锛岃窡cmd鐨勬墽琛岃鍙ヤ竴鑷淬��
			
			stdin.close();
		} catch (Exception e) {
			throw new RuntimeException("异常" + e.getMessage());
		}
	}
}

class SyncPipe implements Runnable {
	private final OutputStream ostrm_;

	private final InputStream istrm_;
 public SyncPipe(InputStream istrm, OutputStream ostrm) {
	 istrm_ = istrm;
	 ostrm_ = ostrm;
 }

 public void run() {
	 try {
		 final byte[] buffer = new byte[1024];
		 for (int length = 0; (length = istrm_.read(buffer)) != -1;) {
			 ostrm_.write(buffer, 0, length);
		 }
	 } catch (Exception e) {
		 throw new RuntimeException("澶勭悊鍛戒护鍑虹幇閿欒锛�" + e.getMessage());
	 }
 }
}
