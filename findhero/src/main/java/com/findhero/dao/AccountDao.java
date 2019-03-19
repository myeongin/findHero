package com.findhero.dao;

import java.util.HashMap;
import java.util.List;

import com.findhero.vo.ApplyVo;
import com.findhero.vo.AttachVo;
import com.findhero.vo.ConfirmVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

public interface AccountDao {

	void insertUser(UserVo user);

	void insertHero(HeroVo hero);

	UserVo selectUserByEmailAndPswd(UserVo user);

	HeroVo selectHeroByEmailAndPswd(UserVo user);

	void updateUser(UserVo user);

	void updateHero(HeroVo hero);

	void insertUserImage(UserVo user);

	void inserHeroImage(HeroVo hero);

	List<RsVo> selectAllRssByHeroNo(int heroNo, int from, int to);

	int selectcountRss(int heroNo);

	List<HashMap<String, Object>> selectAllApplysByUserNo(int userNo, int from, int to);

	RsVo selectRssByRsNo(int rsNo);

	int selectCountApply(int userNo);

	List<RequestVo> selectAllRequestByUserNo(int userNo, int from, int to);

	int countRequest(int userNo);

	List<HashMap<String, Object>> selectAllConfirmByHeroNo(int heroNo, int from, int to);

	RequestVo selectRequestByRequestNo(int requestNo);

	int selectCountConfirm(int heroNo);

	void updateRsDel(int rsNo, String type);

	void updatRsDel2(int rsNo, String type);

	List<UserVo> selectUsersByRsNo(int rsNo);		

	void updateConfirm(int confirmNo, String confirm);

	List<HeroVo> selectHerosByRequests(int requestNo);

	int selectApplyCountByRsNo(int rsNo);

	List<HashMap<String, Object>> selectPricesByMonth(int userNo);

	List<HashMap<String, Object>> selectPricesByMonth2(int heroNo);

	int selectConfirmCount(int requestNo);

	int selectConfirmYCount(int requestNo);

	int selectNewRequests(int heroNo);

	List<HashMap<String, Object>> selectFieldCount(int userNo);

	List<HashMap<String, Object>> selectField2Count(int userNo);

	void insertRequestRs(RsVo rs);

	void insertRsAttach(AttachVo attach);

	void insertOk(int rsNo, int requestNo);

	List<HashMap<String, Object>> selectCheckOks(int userNo);

	void updateOkY(int okNo);

	void updateOkN(int okNo);

	void updateRsDelYByOk(int rsNo);

	void updateRsDelNByOk(int rsNo);

	void updatRsDel3(int rsNo, String type);

	void insertApply(int userNo, int rsNo);

	void updateCon(int heroNo);

}
