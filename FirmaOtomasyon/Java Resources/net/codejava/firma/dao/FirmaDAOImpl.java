package net.codejava.firma.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;


import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import net.codejava.firma.model.Company;

public class FirmaDAOImpl implements FirmaDAO {
private JdbcTemplate jdbcTemplate;
public FirmaDAOImpl(DataSource dataSource)
{
this.jdbcTemplate	=new JdbcTemplate(dataSource);
}
	@Override
	public int save(Company company) {
String sql="INSERT INTO firma( isim, tc, adres, tel, email, dtarih, soru1, soru2, isadres, miktar, notlar,silindimi) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
return jdbcTemplate.update(sql,company.getIsim(),company.getTC(),company.getAdres(),company.getTel(),company.getEmail(),company.getdTarih(),company.getSoru1(),company.getSoru2(),company.getIsAdres(),company.getMiktar(),company.getNotlar(),"0");
	
	}

	@Override
	public int update(Company company) {
		String sql="UPDATE firma SET isim=?,tc=?,adres=?,tel=?,email=?,dtarih=?,soru1=?,soru2=?,isadres=?,miktar=?,notlar=?,silindimi=? WHERE id=?";
		return jdbcTemplate.update(sql,company.getIsim(),company.getTC(),company.getAdres(),company.getTel(),company.getEmail(),company.getdTarih(),company.getSoru1(),company.getSoru2(),company.getIsAdres(),company.getMiktar(),company.getNotlar(),"0",company.getId());
	}

	@Override
	public Company get(Integer id) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM firma WHERE id="+id;
		ResultSetExtractor<Company> extractor= new ResultSetExtractor<Company>() {
			
			@Override
			public Company extractData(ResultSet rs) throws SQLException, DataAccessException {

if(rs.next())
{
	String isim=rs.getString("isim");
	String tc=rs.getString("tc");
	String adres=rs.getString("adres");
	String tel=rs.getString("tel");
	String email=rs.getString("email");
	String dtarih=rs.getString("dtarih");
	String soru1=rs.getString("soru1");
	String soru2=rs.getString("soru2");
	String isadres=rs.getString("isadres");
	String miktar=rs.getString("miktar");
	String notlar=rs.getString("notlar");
return new Company(id,isim,tc,adres,tel,email,dtarih,soru1,soru2,isadres,miktar,notlar);
	
}
return null;
			}
		};
		return jdbcTemplate.query(sql,extractor);
	}

	@Override
	public int delete(Integer id) {
		String sql="UPDATE firma SET silindimi='1' WHERE id=?";
		return jdbcTemplate.update(sql,id);
	
	}

	@Override
	public List<Company> list() {
String sql= "SELECT * FROM firma WHERE silindimi='0'";


   RowMapper<Company> rowMapper= new RowMapper<Company>() {
	
	@Override
	public Company mapRow(ResultSet rs, int rowNum) throws SQLException {
		Integer id=rs.getInt("id");
		String isim=rs.getString("isim");
		String tc=rs.getString("tc");
		String adres=rs.getString("adres");
		String tel=rs.getString("tel");
		String email=rs.getString("email");
		String dtarih=rs.getString("dtarih");
		String soru1=rs.getString("soru1");
		String soru2=rs.getString("soru2");
		String isadres=rs.getString("isadres");
		String miktar=rs.getString("miktar");
		String notlar=rs.getString("notlar");
		
	return new Company(id,isim,tc,adres,tel,email,dtarih,soru1,soru2,isadres,miktar,notlar);
	}
};

return jdbcTemplate.query(sql, rowMapper);
	}

}
