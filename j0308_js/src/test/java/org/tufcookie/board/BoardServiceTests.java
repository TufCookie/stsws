package org.tufcookie.board;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.tufcookie.board.config.BoardConfig;
import org.tufcookie.board.service.BoardService;
import org.tufcookie.common.config.CommonConfig;
import org.tufcookie.common.dto.PageDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {CommonConfig.class, BoardConfig.class})
@Log4j
public class BoardServiceTests {
	
	@Autowired
	BoardService service;
	
	PageDTO pageDTO = new PageDTO();
	
	@Test
	public void testGetList() {
		
		service.getList(pageDTO).forEach(board -> log.info(board));
		
	}

}
