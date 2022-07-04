package com.veryvery.service;

import java.util.List;

import com.veryvery.dto.BoardDTO;

public interface LatestService {

	public List<BoardDTO> latestBoard() throws Exception;
}
