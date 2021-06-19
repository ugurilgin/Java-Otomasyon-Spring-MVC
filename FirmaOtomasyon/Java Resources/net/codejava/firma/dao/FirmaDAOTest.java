package net.codejava.firma.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import net.codejava.firma.model.Company;

class FirmaDAOTest {
private DriverManagerDataSource dataSource;
private FirmaDAO dao;
@BeforeEach
void setupBeforeEach() {
	dataSource=new DriverManagerDataSource();
	dataSource.setDriverClassName("com.mysql.jdbc.Driver");
	dataSource.setUrl("jdbc:mysql://localhost:3306/bulutmd");
	dataSource.setUsername("root");
	dataSource.setPassword("");
	dao=new FirmaDAOImpl(dataSource);
	
}
@Test
	void testSave() {
		
		Company company=new Company("1", "1", "0", "0", "0", "0","0","0", "0", "0" , "0");
	int result=dao.save(company);
	assertTrue(result>0);
	}

	@Test
	void testUpdate() {
		Company company=new Company(2,"Uður Ilgýn", "1", "0", "0", "0", "0","0","0", "0", "0" , "0");
		int result=dao.update(company);
		
		assertTrue(result>0);
	}

	@Test
	void testGet() {
Integer id=1;
Company company=dao.get(id);
if (company !=null)
{
	System.out.println(company);
}
assertNotNull(company);
	
	}

	@Test
	void testDelete() {
		
		int result=dao.delete(2);
		
		assertTrue(result>0);
	}

	@Test
	void testList() {
List<Company> listCompany=dao.list();
for(Company acompany:listCompany)
{
	System.out.println(acompany);
}
assertTrue(listCompany.isEmpty());
}

}
