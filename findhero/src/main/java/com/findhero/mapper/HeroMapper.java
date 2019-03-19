package com.findhero.mapper;

import java.util.HashMap;
import java.util.List;

import com.findhero.vo.HeroVo;

public interface HeroMapper {

	List<HeroVo> selectHeros(HashMap<String, Object> page);

	int countHeros();

}
