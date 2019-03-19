package com.findhero.service;

import java.util.List;

import com.findhero.vo.HeroVo;

public interface HeroService {

	List<HeroVo> takeHeros(int from, int to);

	int countHeros();

}
