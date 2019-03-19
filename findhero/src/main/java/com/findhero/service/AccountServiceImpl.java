package com.findhero.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import com.findhero.dao.AccountDao;
import com.findhero.vo.ApplyVo;
import com.findhero.vo.AttachVo;
import com.findhero.vo.ConfirmVo;
import com.findhero.vo.HeroVo;
import com.findhero.vo.RequestVo;
import com.findhero.vo.RsVo;
import com.findhero.vo.UserVo;

import ch.qos.logback.core.subst.Token.Type;

public class AccountServiceImpl implements AccountService{
	
	private AccountDao accountDao;
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	
	@Override
	public void registerUser(UserVo user) {		
		accountDao.insertUser(user);		
	}
		
	@Override
	public void registerHero(HeroVo hero) {
		accountDao.insertHero(hero);
		
	}

	@Override
	public UserVo loginUser(UserVo user) {
		
		UserVo loginUser = accountDao.selectUserByEmailAndPswd(user);	
		
		return loginUser;
	}

	@Override
	public HeroVo loginUser2(UserVo user) {
		
		HeroVo loginUser2 = accountDao.selectHeroByEmailAndPswd(user);
		
		return loginUser2;
	}

	@Override
	public void reWriteUser(UserVo user) {
		
		accountDao.updateUser(user);
		
	}

	@Override
	public void reWriteHero(HeroVo hero) {
		
		accountDao.updateHero(hero);
		
	}

	@Override
	public void setUserImage(UserVo user) {
		
		accountDao.insertUserImage(user);
		
	}

	@Override
	public void setHeroImage(HeroVo hero) {
		
		accountDao.inserHeroImage(hero);
		
	}

	@Override
	public List<RsVo> takeAllRssByHeroNo(int heroNo,int from,int to) {
		
		List<RsVo> rss = accountDao.selectAllRssByHeroNo(heroNo,from,to);
		
		for(RsVo rs : rss) {
			List<UserVo> users = accountDao.selectUsersByRsNo(rs.getRsNo());
			int applyCount = accountDao.selectApplyCountByRsNo(rs.getRsNo());
			rs.setUsers(users);
			rs.setApplyCount(applyCount);
		}
		
		return rss;
	}

	@Override
	public int countRss(int heroNo) {
		
		int rssCount = accountDao.selectcountRss(heroNo);
		
		return rssCount;
	}

	@Override
	public List<HashMap<String,Object>> takeAllRssByUeroNo(int userNo, int from, int to) {
		
		List<HashMap<String,Object>> rss = accountDao.selectAllApplysByUserNo(userNo,from,to);					
		
		for(HashMap<String, Object>rs : rss) {
			int rsNo = (int)rs.get("RsNo");
			int applyCount = accountDao.selectApplyCountByRsNo(rsNo);
			rs.put("applyCount",applyCount);
		}
		
		return rss;
	}

	@Override
	public int countApply(int userNo) {
		
		int applyCount = accountDao.selectCountApply(userNo);
		
		return applyCount;
	}

	@Override
	public List<RequestVo> takeAllRequestByuserNo(int userNo, int from, int to) {
		
		List<RequestVo> requests = accountDao.selectAllRequestByUserNo(userNo,from,to);		
		
		for(RequestVo request:requests) {
			List<HeroVo> heros = accountDao.selectHerosByRequests(request.getRequestNo());
			request.setConfirmCount(accountDao.selectConfirmCount(request.getRequestNo()));
			request.setConfirmYCount(accountDao.selectConfirmYCount(request.getRequestNo()));
			request.setHeros(heros);
		}
		
		return requests;
	}

	@Override
	public int countRequest(int userNo) {
		
		int requestCount = accountDao.countRequest(userNo);
		
		return requestCount;
	}

	@Override
	public List<HashMap<String, Object>> takeAllRequestByHeroNo(int heroNo, int from, int pagesize) {
		
		List<HashMap<String, Object>> requests = accountDao.selectAllConfirmByHeroNo(heroNo,from,pagesize);						
		
		return requests;
	}

	@Override
	public int countConfirm(int heroNo) {
		 
		int confirmCount = accountDao.selectCountConfirm(heroNo);
		
		return confirmCount;
	}

	@Override
	public void changeServiceDel(int rsNo, String type) {		
		accountDao.updateRsDel(rsNo,type);		
	}

	@Override
	public void changeServiceDel2(int rsNo, String type) {
		accountDao.updatRsDel2(rsNo,type);		
	}

	@Override
	public void choiceConfirm(int confirmNo, String confirm) {		
		accountDao.updateConfirm(confirmNo,confirm);
	}

	@Override
	public int[] takePricesByMonth(int userNo) {
		
		int[] prices = {0,0,0,0,0,0,0,0,0,0,0,0};
		
		List<HashMap<String, Object>> monthPrices = accountDao.selectPricesByMonth(userNo); 				
		
		for(HashMap<String, Object> price:monthPrices) {
			
			int a = Integer.parseInt(String.valueOf(price.get("reg")+""));
			int p = Integer.parseInt(String.valueOf(price.get("price")+""));
					
			
			if( a == 1) {
				prices [0] = p;
			}else if (a == 2) {
				prices [1] = p;
			}else if (a == 3) {
				prices [2] = p; 
			}else if (a == 4) {
				prices [3] = p; 
			}else if (a == 5) {
				prices [4] = p; 
			}else if (a == 6) {
				prices [5] = p; 
			}else if (a == 7) {
				prices [6] = p; 
			}else if (a == 8) {
				prices [7] = p; 
			}else if (a == 9) {
				prices [8] = p; 
			}else if (a == 10) {
				prices [9] = p; 
			}else if (a == 11) {
				prices [10] = p; 
			}else if (a == 12) {
				prices [11] = p; 
			}
			
		}
		
		return prices;
	}

	@Override
	public int[] takePricesByMonth2(int heroNo) {
		
		int[] prices = {0,0,0,0,0,0,0,0,0,0,0,0};
		
		List<HashMap<String, Object>> monthPrices = accountDao.selectPricesByMonth2(heroNo);				
		
		for(HashMap<String, Object> price:monthPrices) {
			
			int a = Integer.parseInt(String.valueOf(price.get("reg")+""));
			int p = Integer.parseInt(String.valueOf(price.get("price")+""));
					
			
			if( a == 1) {
				prices [0] = p;
			}else if (a == 2) {
				prices [1] = p;
			}else if (a == 3) {
				prices [2] = p; 
			}else if (a == 4) {
				prices [3] = p; 
			}else if (a == 5) {
				prices [4] = p; 
			}else if (a == 6) {
				prices [5] = p; 
			}else if (a == 7) {
				prices [6] = p; 
			}else if (a == 8) {
				prices [7] = p; 
			}else if (a == 9) {
				prices [8] = p; 
			}else if (a == 10) {
				prices [9] = p; 
			}else if (a == 11) {
				prices [10] = p; 
			}else if (a == 12) {
				prices [11] = p; 
			}
			
		}
		
		return prices;
	}

	@Override
	public int countNewRequest(int heroNo) {
		
		int newRequests = accountDao.selectNewRequests(heroNo);
		
		return newRequests;
	}

	@Override
	public void updateCon(int heroNo) {
		accountDao.updateCon(heroNo);
		
	}

	@Override
	public int[] takeFieldCount(int userNo) {
		
		List<HashMap<String, Object>> fieldCount = accountDao.selectFieldCount(userNo);
		
		int[] field1 = {0,0,0,0,0,0};
		
		for(HashMap<String, Object> field:fieldCount) {
			
			int c = Integer.parseInt(String.valueOf(field.get("count")+""));
			int p = Integer.parseInt(String.valueOf(field.get("price")+""));
			
			if(field.get("RsField1").equals("레슨")) {
				field1[0] = p;
				field1[1] = c;
			}else if(field.get("RsField1").equals("비즈니스")) {
				field1[2] = p;
				field1[3] = c;
			}else if(field.get("RsField1").equals("디자인/개발"))
				field1[4] = p;
				field1[5] = c;									
		}
		
		
		return field1;
	}

	@Override
	public List<HashMap<String, Object>> takeField2Count(int userNo) {
		
		List<HashMap<String, Object>> fieldCount2 = accountDao.selectField2Count(userNo);
		
		return fieldCount2;
	}

	@Override
	public void insertRequestRs(RsVo rs, int requestNo) {
		
		accountDao.insertRequestRs(rs);
		
		for(AttachVo attach : rs.getAttachments()) {
			attach.setRsNo(rs.getRsNo());
			accountDao.insertRsAttach(attach);
		}
		
		accountDao.insertOk(rs.getRsNo(),requestNo);
		
	}

	@Override
	public List<HashMap<String, Object>> takeCheckOks(int userNo) {
		 
		List<HashMap<String, Object>> checkOks = accountDao.selectCheckOks(userNo);
		
		return checkOks;
	}

	@Override
	public void changeOkY(int okNo) {		
		accountDao.updateOkY(okNo);
	}

	@Override
	public void changeOkN(int okNo) {
		accountDao.updateOkN(okNo);		
	}

	@Override
	public void changeRsDelYByOk(int rsNo) {
		accountDao.updateRsDelYByOk(rsNo);		
	}

	@Override
	public void changeRsDelNByOK(int rsNo) {
		accountDao.updateRsDelNByOk(rsNo);		
	}

	@Override
	public void changeServiceDel3(int rsNo, String type) {
		accountDao.updatRsDel3(rsNo,type);
		
	}

	@Override
	public void insertApply(int userNo, int rsNo) {		
		accountDao.insertApply(userNo,rsNo);
	}


	

	

	

	

}


	
	

