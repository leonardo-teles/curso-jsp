package br.com.jdev.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionBanco {

	private static String banco = "jdbc:postgresql://localhost:5432/usuarios-jsp?autoReconnect=true";
	private static String usuario = "leonardo";
	private static String senha = "senha123";
	
	private static Connection connection = null;
	
	public static Connection getConnection() {
		return connection;
	}
	
	static {
		conectra();
	}
	
	public SingleConnectionBanco() { /* quando tiver uma instância, vai conectar */
		conectra();
	}
	
	private static void conectra() {
		try {
			
			if(connection == null) {
				Class.forName("org.postgresql.Driver"); /* carrega o driver de conexão com o banco */
				connection = DriverManager.getConnection(banco, usuario, senha);
				connection.setAutoCommit(false); /* para não efetuar alterações no banco sem comando */
			}
			
		} catch (Exception e) {
			e.printStackTrace(); /* mostrar erro no momento de conectar */
		}
	}
	
}
