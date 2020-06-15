package com.silver.oracle;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.silver.VO.memberBVO;
import com.silver.mapper.MapperDAO;

@Controller
public class MytController {
	MapperDAO mapper;
	
	@Autowired
    private SqlSession sqlSession;   //org.mybatis에서 제공하는 라이브러리
	//@Autowired 어노테이션을 통해 SqlSession 객체는 Spring, Mybatis의 라이프사이클을 따라 자동으로 바인딩 되며 12번 라인과 같이 sqlSession을 통해 등록해 두었던 mapper를 사용할 수 있습니다.
	
	@RequestMapping("list")
	public String list(Model model) {
		mapper = sqlSession.getMapper(MapperDAO.class);
		ArrayList<memberBVO> bVOs = mapper.selectAll();
		model.addAttribute("list", bVOs);
		System.out.println(bVOs+"/"+bVOs.size());
		// 리스트를 구현하기 위한 코드
		return "/bbs/list";
	}
}
