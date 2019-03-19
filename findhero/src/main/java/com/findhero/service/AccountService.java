package com.findhero.service;

import java.util.HashMap;
import java.util.List;

import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

public interface AccountService {

	void registerUser(UserVo user);

	void registerHero(HeroVo hero);

	UserVo loginUser(UserVo user);

	HeroVo loginUser2(UserVo user);

	void reWriteUser(UserVo user);

	void reWriteHero(HeroVo hero);

	void setUserImage(UserVo user);

	void setHeroImage(HeroVo hero);

	List<RsVo> takeAllRssByHeroNo(int heroNo, int from, int to);

	int countRss(int heroNo);

	List<HashMap<String, Object>> takeAllRssByUeroNo(int userNo, int from, int to);

	int countApply(int userNo);

	List<RequestVo> takeAllRequestByuserNo(int userNo, int from, int to);

	int countRequest(int userNo);

	List<HashMap<String, Object>> takeAllRequestByHeroNo(int heroNo, int from, int to);

	int countConfirm(int heroNo);

	void changeServiceDel(int rsNo, String type);

	void changeServiceDel2(int rsNo, String type);	

	void choiceConfirm(int confirmNo, String confirm);

	int[] takePricesByMonth(int userNo);

	int[] takePricesByMonth2(int heroNo);

	int countNewRequest(int heroNo);

	int[] takeFieldCount(int userNo);

	List<HashMap<String, Object>> takeField2Count(int userNo);

	void insertRequestRs(RsVo rs, int requestNo);

	List<HashMap<String, Object>> takeCheckOks(int userNo);

	void changeOkY(int okNo);

	void changeOkN(int okNo);

	void changeRsDelYByOk(int rsNo);

	void changeRsDelNByOK(int rsNo);

	void changeServiceDel3(int rsNo, String type);

	void insertApply(int userNo, int rsNo);

	void updateCon(int heroNo);

	
	
}
