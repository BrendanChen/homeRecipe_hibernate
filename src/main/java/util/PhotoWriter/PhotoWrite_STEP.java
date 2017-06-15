package util.PhotoWriter;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

class PhotoWrite_STEP {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String argv[]) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String userid = "Brendan";
		String passwd = "j0o0h0n0";

		try {
			con = DriverManager.getConnection(url, userid, passwd);
			InputStream fin = null;
			// 
			for (int i = 4; i < 17; i++) {
				File pic = new File("D:/download/img/step/7001_" + i + ".jpg"); 

				long flen = pic.length();

				fin = new FileInputStream(pic);


				System.out.println("update step set photo=? where rcp_seq = '7001' and step_no ='" + i + "'");

				pstmt = con.prepareStatement("update step set photo=? where rcp_seq = '7001' and step_no ='" + i + "'");

				pstmt.setBinaryStream(1, fin, (int) flen);
				int rowsUpdated = pstmt.executeUpdate();

				if (1 == rowsUpdated) {
					System.out.println(" row.");
				} else {
					System.out.println("updated '7001_" + i + "' is fail"); 
				}
			}
			fin.close();
			pstmt.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

