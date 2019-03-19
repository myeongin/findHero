package com.findhero.dao;

import java.util.HashMap;
import java.util.List;

import com.findhero.mapper.AccountMapper;
import com.findhero.vo.ApplyVo;
import com.findhero.vo.AttachVo;
import com.findhero.vo.ConfirmVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;


public class AccountDaoImpl implements AccountDao{

	private AccountMapper accountMapper;
	public void setAccountMapper(AccountMapper accountMapper) {
		this.accountMapper = accountMapper;
	}
	
	@Override
	public void insertUser(UserVo user) {						
		accountMapper.insertUser(user);
	}

	
	@Override
	public void insertHero(HeroVo hero) {
		accountMapper.insertHero(hero);	
	}

	@Override
	public UserVo selectUserByEmailAndPswd(UserVo user) {
		UserVo loginUser = accountMapper.selectUserByEmailAndPswd(user);
		return loginUser;
	}

	@Override
	public HeroVo selectHeroByEmailAndPswd(UserVo user) {
		HeroVo loginUser2 = accountMapper.selectHeroByEmailAndPswd(user);
		return loginUser2;
	}

	@Override
	public void updateUser(UserVo user) {
		accountMapper.updateUser(user);		
	}

	@Override
	public void updateHero(HeroVo hero) {
		accountMapper.updateHero(hero);
		
	}

	@Override
	public void insertUserImage(UserVo user) {
		accountMapper.insertUserImage(user);
		
	}

	@Override
	public void inserHeroImage(HeroVo hero) {
		accountMapper.insertHeroImage(hero);
		
	}

	@Override
	public List<RsVo> selectAllRssByHeroNo(int heroNo,int from,int to) {
		
		HashMap<String, Object> page = new HashMap<>();
		page.put("heroNo",heroNo);
		page.put("from", from-1);
		page.put("pagesize",to);
		page.put("del",1);
		
		List<RsVo> rss = accountMapper.selectAllRssByHeroNo(page);
		
		return rss;
	}

	@Override
	public int selectcountRss(int heroNo) {
		
		int rssCount = accountMapper.selectcountRss(heroNo);
		
		return rssCount;
	}

	@Override
	public List<HashMap<String,Object>> selectAllApplysByUserNo(int userNo, int from, int to) {
		
		HashMap<String, Object> page = new HashMap<>();
		page.put("userNo", userNo);
		page.put("from",from -1);
		page.put("pagesize",to);		
		
		List<HashMap<String,Object>> rss = accountMapper.selectAllApplysByUserNo(page);
		
		return rss;
	}

	@Override
	public RsVo selectRssByRsNo(int rsNo) {
		
		RsVo rs = accountMapper.selectRssByRsNo(rsNo);
		
		return rs;
	}

	@Override
	public int selectCountApply(int userNo) {
		
		int applyCount = accountMapper.selectCountApply(userNo);
		
		return applyCount;
	}

	@Override
	public List<RequestVo> selectAllRequestByUserNo(int userNo, int from, int to) {
		
		HashMap<String,Object> page = new HashMap<>();
		page.put("userNo", userNo);
		page.put("from",from - 1);
		page.put("pagesize",to);
		
		List<RequestVo> requests = accountMapper.selectAllRequestByUserNo(page);
		
		return requests;
	}

	@Override
	public int countRequest(int userNo) {
		
		int countRequest = accountMapper.selectCountRequest(userNo);
		
		return countRequest;
	}

	@Override
	public List<HashMap<String, Object>> selectAllConfirmByHeroNo(int heroNo, int from, int pagesize) {
		
		HashMap<String,Object> page = new HashMap<>();
		page.put("heroNo", heroNo);
		page.put("from",from - 1);
		page.put("pagesize",pagesize);
		
		List<HashMap<String, Object>> requests = accountMapper.selectAllConfirmByHeroNo(page);
		
		return requests;
	}

	@Override
	public RequestVo selectRequestByRequestNo(int requestNo) {
		
		RequestVo request = accountMapper.selectRequestByRequestNo(requestNo);
		
		return request;
	}

	@Override
	public int selectCountConfirm(int heroNo) {
		
		int confirmCount = accountMapper.selectCountConfirm(heroNo);
		
		return confirmCount;
	}

	@Override
	public void updateRsDel(int rsNo, String type) {
		
		HashMap<String, Object> map = new HashMap<>();	
		map.put("rsNo",rsNo);
		map.put("type",type);
		
		accountMapper.updateRsDel(map);
		
	}

	@Override
	public void updatRsDel2(int rsNo, String type) {
		
		HashMap<String, Object> map = new HashMap<>();	
		map.put("rsNo",rsNo);
		map.put("type",type);
		
		accountMapper.updateRsDel2(map);
		
	}

	@Override
	public List<UserVo> selectUsersByRsNo(int rsNo) {
		
		List<UserVo> users = accountMapper.selectUsersByRsNo(rsNo);
		
		return users;
	}

	@Override
	public void updateConfirm(int confirmNo, String confirm) {
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("confirmNo", confirmNo);
		map.put("confirm",confirm);
		accountMapper.updateConfirm(map);
		
	}

	@Override
	public List<HeroVo> selectHerosByRequests(int requestNo) {
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("requestNo", requestNo);
		map.put("consent","승인");
		
		List<HeroVo> heros = accountMapper.selectHerosByRequests(map);
		
		return heros;
	}

	@Override
	public int selectApplyCountByRsNo(int rsNo) {
		
		int applyCount = accountMapper.selectApplyCountByRsNo(rsNo);
		
		return applyCount;
	}

	@Override
	public List<HashMap<String, Object>> selectPricesByMonth(int userNo) {
		
		List<HashMap<String, Object>> price = accountMapper.selectprcie(userNo);
				
		
		return price;
	}

	@Override
	public List<HashMap<String, Object>> selectPricesByMonth2(int heroNo) {
		
		List<HashMap<String, Object>> price = accountMapper.selectPricesByMonth2(heroNo);
				
		
		return price;
	}

	@Override
	public int selectConfirmCount(int requestNo) {
		
		int confirmCount = accountMapper.selectConfirmCount(requestNo);
	
		return confirmCount;
	}

	@Override
	public int selectConfirmYCount(int requestNo) {
		
		int confirmYCount = accountMapper.selectConfirmYCount(requestNo);				
		
		return confirmYCount;
	}

	@Override
	public int selectNewRequests(int heroNo) {
		
		int newRequests = accountMapper.selectNewRequests(heroNo);
		
		return newRequests;
	}

	@Override
	public void updateCon(int heroNo) {
		
		accountMapper.updateCon(heroNo);
	}

	@Override
	public List<HashMap<String, Object>> selectFieldCount(int userNo) {
		
		List<HashMap<String, Object>> fieldCount = accountMapper.selectFieldCount(userNo);
		
		return fieldCount;
	}

	@Override
	public List<HashMap<String, Object>> selectField2Count(int userNo) {
		
		List<HashMap<String, Object>> fieldCount2 = accountMapper.selectField2Count(userNo);
		
		return fieldCount2;
	}

	@Override
	public void insertRequestRs(RsVo rs) {		
		accountMapper.insertRequestRs(rs);
	}

	@Override
	public void insertRsAttach(AttachVo attach) {
		accountMapper.insertRsAttach(attach);		
	}

	@Override
	public void insertOk(int rsNo, int requestNo) {
		
		HashMap<String, Object> no = new HashMap<>();
		no.put("rsNo", rsNo);
		no.put("requestNo",requestNo);
		
		accountMapper.insertOk(no);
		
	}

	@Override
	public List<HashMap<String, Object>> selectCheckOks(int userNo) {
		
		List<HashMap<String, Object>> checkOks = accountMapper.selectCheckOks(userNo);
		
		return checkOks;
	}

	@Override
	public void updateOkY(int okNo) {
		accountMapper.updateOkY(okNo);		
	}

	@Override
	public void updateOkN(int okNo) {
		accountMapper.updateOkN(okNo);		
	}

	@Override
	public void updateRsDelYByOk(int rsNo) {
		accountMapper.updateRsDelYByOk(rsNo);		
	}

	@Override
	public void updateRsDelNByOk(int rsNo) {
		accountMapper.updateRsDelNByOk(rsNo);		
	}

	@Override
	public void updatRsDel3(int rsNo, String type) {
		
		HashMap<String, Object> map = new HashMap<>();	
		map.put("rsNo",rsNo);
		map.put("type",type);
		
		accountMapper.updateRsDel3(map);
		
	}

	@Override
	public void insertApply(int userNo, int rsNo) {
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("userNo", userNo);
		map.put("rsNo",rsNo);
		
		accountMapper.insertApply(map);
		
	}

}
