package org.tufcookie.board;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.tufcookie.board.config.BoardConfig;
import org.tufcookie.board.mapper.BoardMapper;
import org.tufcookie.board.service.BoardService;
import org.tufcookie.common.config.CommonConfig;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {CommonConfig.class, BoardConfig.class})
@Log4j
public class BoardTests {
	
	@Autowired
	BoardMapper mapper;
	
	@Test
	public void testGetList() {
		
		mapper.getList().forEach(board -> log.info(board));
		
	}
	
}
