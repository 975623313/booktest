package com.an.mapper;

import java.util.List;

import com.an.pojo.Rules;

public interface RuleMapper {
	public List<Rules> findAllRule();
	
	public void addRules(Rules rules);

	public void deleteRules(int ruleId);
	
	
	public Rules findById(int ruleId);
	public void updateRule(Rules rule);
}
