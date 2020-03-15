package com.an.mapper;

import java.util.List;

import com.an.pojo.Infos;
import com.an.pojo.Rules;

public interface InfoMapper {
	
	public List<Infos> findAllInfo();
	public void addInfos(Infos infos);
	public void deleteInfos(int infoId);
	public Infos findById(int infoId);
	
	public void updateInfo(Infos info);

}
