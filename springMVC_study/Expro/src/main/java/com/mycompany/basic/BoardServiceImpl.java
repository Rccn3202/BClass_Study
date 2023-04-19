package com.mycompany.basic;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
   
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public String create(Map<String, Object> map) {
		int affectRowCount = this.boardDAO.insert(map);
		if( affectRowCount == 1 ) {
			System.out.println( affectRowCount + "행이 삽입됨" );
			return map.get("no").toString();
		}
		return null;
	}
}
