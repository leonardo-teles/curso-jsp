package br.com.jdev.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.jdev.connection.SingleConnectionBanco;
import br.com.jdev.model.Login;

public class DAOLogin {

	private Connection connection;

	public DAOLogin() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public boolean validarAutenticacao(Login login) throws Exception {
		String sql = "SELECT * FROM tb_login WHERE upper(login) = upper(?) AND upper(senha) = upper(?)";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, login.getLogin());
		statement.setString(2, login.getSenha());
		
		ResultSet resultSet = statement.executeQuery();
		
		if(resultSet.next()) {
			return true;
		}
		
		return false;
	}
	
}
