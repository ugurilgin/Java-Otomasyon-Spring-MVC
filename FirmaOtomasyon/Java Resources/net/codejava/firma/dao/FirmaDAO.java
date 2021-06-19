package net.codejava.firma.dao;

import java.util.List;

import net.codejava.firma.model.Company;

public interface FirmaDAO {
	public int save(Company company );

	public int update(Company company );

	public  Company get(Integer id );

	public int delete(Integer id );

	public List<Company> list();
}
