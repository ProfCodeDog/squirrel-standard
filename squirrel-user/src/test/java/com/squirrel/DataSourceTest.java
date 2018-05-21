package com.squirrel;

import org.junit.Test;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.junit.runner.RunWith;
import javax.annotation.Resource;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Description: DataSourceTest
 *
 * @author machine
 * @date 2017年12月18日 上午12:14:55
 */
@SpringBootTest(classes = StartSpringBootMain.class)
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
public class DataSourceTest {

	@Resource
	private DataSource dataSource;

	/**
	 * @Description: testIConnection
	 *
	 * @author machine
	 * @date 2017年12月18日 上午12:15:12
	 */
	@Test
	public void testIConnection() throws SQLException {
		System.out.println(this.dataSource.getConnection());
	}
}