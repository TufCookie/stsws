package org.tufcookie.board.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.tufcookie.board.dto.BoardDTO;
import org.tufcookie.board.mapper.BoardMapper;
import org.tufcookie.common.dto.PageDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

	private final BoardMapper boardMapper;
	
	@Override
	public List<BoardDTO> getPageList(PageDTO pagdDTO) {
		
		return boardMapper.getList();
		
	}

}