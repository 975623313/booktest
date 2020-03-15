package com.an.service;

import java.util.List;

import com.an.pojo.Infos;

public interface InfoService {

	public List<Infos> findAllInfo();
	public void addInfos(Infos infos);
	public void deleteInfos(int infoId);
	public Infos findById(int infoId);
	public void updateInfo(Infos info);
}
