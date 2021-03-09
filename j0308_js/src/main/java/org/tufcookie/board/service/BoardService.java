package org.tufcookie.board.service;

import java.util.List;

import org.tufcookie.board.dto.BoardDTO;
import org.tufcookie.common.dto.PageDTO;

public interface BoardService {
	
	List<BoardDTO> getPageList(PageDTO pagdDTO);
	
}
