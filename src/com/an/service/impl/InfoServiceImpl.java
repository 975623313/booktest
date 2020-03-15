package com.an.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.an.mapper.InfoMapper;
import com.an.pojo.Infos;
import com.an.service.InfoService;

@Service
public class InfoServiceImpl implements InfoService {

	@Autowired
	private InfoMapper infoMapper;

	@Override
	public List<Infos> findAllInfo() {
		// TODO Auto-generated method stub
		return this.infoMapper.findAllInfo();
	}

	@Override
	public void addInfos(Infos infos) {
		this.infoMapper.addInfos(infos);

	}

	@Override
	public void deleteInfos(int infoId) {
		this.infoMapper.deleteInfos(infoId);
	}

	@Override
	public Infos findById(int infoId) {
		// TODO Auto-generated method stub
		return this.infoMapper.findById(infoId);
	}

	@Override
	public void updateInfo(Infos info) {
		this.infoMapper.updateInfo(info);
		
	}

}
