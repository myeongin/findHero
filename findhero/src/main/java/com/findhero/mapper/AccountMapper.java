package com.findhero.mapper;

import java.util.HashMap;
import java.util.List;

import com.findhero.vo.ApplyVo;
import com.findhero.vo.AttachVo;
import com.findhero.vo.ConfirmVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

public interface AccountMapper {

	void insertUser(UserVo user);
	void insertHero(HeroVo hero);
	UserVo selectUserByEmailAndPswd(UserVo user);
	HeroVo selectHeroByEmailAndPswd(UserVo user);
	void updateUser(UserVo user);
	void updateHero(HeroVo hero);
	void insertUserImage(UserVo user);
	void insertHeroImage(HeroVo hero);
	List<RsVo> selectAllRssByHeroNo(HashMap<String, Object> page);
	int selectcountRss(int heroNo);
	List<HashMap<String, Object>> selectAllApplysByUserNo(HashMap<String, Object> page);
	RsVo selectRssByRsNo(int rsNo);
	int selectCountApply(int userNo);
	List<RequestVo> selectAllRequestByUserNo(HashMap<String, Object> page);
	int selectCountRequest(int userNo);
	List<HashMap<String, Object>> selectAllConfirmByHeroNo(HashMap<String, Object> page);
	RequestVo selectRequestByRequestNo(int requestNo);
	int selectCountConfirm(int heroNo);
	void updateRsDel(HashMap<String, Object> map);
	void updateRsDel2(HashMap<String, Object> map);
	List<UserVo> selectUsersByRsNo(int rsNo);
	void updateConfirm(HashMap<String, Object> map);	
	List<HeroVo> selectHerosByRequests(HashMap<String, Object> map);
	int selectApplyCountByRsNo(int rsNo);			
	List<HashMap<String, Object>> selectprcie(int userNo);
	List<HashMap<String, Object>> selectPricesByMonth2(int heroNo);
	int selectConfirmCount(int requestNo);
	int selectConfirmYCount(int requestNo);
	int selectNewRequests(int heroNo);
	void updateCon(int heroNo);
	List<HashMap<String, Object>> selectFieldCount(int userNo);
	List<HashMap<String, Object>> selectField2Count(int userNo);
	void insertRequestRs(RsVo rs);
	void insertRsAttach(AttachVo attach);
	void insertOk(HashMap<String, Object> no);
	List<HashMap<String, Object>> selectCheckOks(int userNo);
	void updateOkY(int okNo);
	void updateOkN(int okNo);
	void updateRsDelYByOk(int rsNo);
	void updateRsDelNByOk(int rsNo);
	void updateRsDel3(HashMap<String, Object> map);
	void insertApply(HashMap<String, Object> map);
	
	
}
