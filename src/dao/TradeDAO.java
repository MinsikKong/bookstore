package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.PurchaseDTO;

import myBatis.MyBatisManager;

public class TradeDAO {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getInstance();

	public static int purchaseBook(PurchaseDTO pDto) {

		SqlSession session = sqlMapper.openSession();
		int result = 0 ;
		try {
			System.out.println(pDto.getName() + "name");
			result =  session.update("TradeMapper.purchaseBook", pDto );
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}
}
