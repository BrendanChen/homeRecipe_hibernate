package util.PhotoWriter;

import java.sql.*;
import java.io.*;

class PhotoWrite_RECIPE {

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
			// �Ϥ�
			for (int i = 2; i < 3; i++) {// �Цۦ�p�⦳�X�i�Ϥ��n�]�X��
				File pic = new File("D:/download/img/������_�q�J�|_" + i + ".jpg"); 

				long flen = pic.length();

				fin = new FileInputStream(pic);

				// �ק�SQL���O �ثe�Ϥ����̫�s���|��WFK���̫�s�X

				System.out.println("update recipe set photo=? where rcp_seq='700" + i + "'");

				pstmt = con.prepareStatement("update recipe set photo=? where rcp_seq='700" + i + "'");

				pstmt.setBinaryStream(1, fin, (int) flen);
				int rowsUpdated = pstmt.executeUpdate();

				if (1 == rowsUpdated) {
					System.out.println(" row.");
				} else {
					System.out.println("updated '700" + i + "' is fail"); // ���~�T��
				}
			}
			fin.close();
			pstmt.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}