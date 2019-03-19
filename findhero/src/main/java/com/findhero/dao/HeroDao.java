package com.findhero.dao;

import java.util.List;

import com.findhero.vo.HeroVo;

public interface HeroDao {

	List<HeroVo> selectHeros(int from, int to);

	int countHeros();

}
