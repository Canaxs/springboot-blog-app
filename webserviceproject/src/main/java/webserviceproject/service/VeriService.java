package webserviceproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import webserviceproject.jdbc.UsersJdbc;
import webserviceproject.model.Veri;
import java.util.List;


@Service
public class VeriService {
	private UsersJdbc usersJdbc;

	@Autowired
	public void setUsersJdbc(UsersJdbc usersJdbc) {
		this.usersJdbc = usersJdbc;
		List<Veri> denemeList;
	}
	
	public List<Veri> userget(){
		return usersJdbc.findAll();
	}
	
}
