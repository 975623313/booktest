package com.an.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.an.mapper.RuleMapper;
import com.an.pojo.Rules;
import com.an.service.RuleService;

@Service
public class RuleServiceImpl implements RuleService {

	@Autowired
	private RuleMapper ruleMapper;
	
	@Override
	public List<Rules> findAllRule() {
		// TODO Auto-generated method stub
		return this.ruleMapper.findAllRule();
	}

	@Override
	public void addRules(Rules rules) {
	this.ruleMapper.addRules(rules);
		
	}

	@Override
	public void deleteRules(int ruleId) {
		this.ruleMapper.deleteRules(ruleId);
		
	}

	@Override
	public Rules findById(int ruleId) {
		// TODO Auto-generated method stub
		return this.ruleMapper.findById(ruleId);
	}

	@Override
	public void updateRule(Rules rule) {
		System.out.println(rule.getRuleId());
		System.out.println(rule.getRuleContent()+"!!!!!!!!!!!!!");
		System.out.println(rule.getOrderRule()+"@@@@@@@@@@@@@@@@@@@@@@@@");
		this.ruleMapper.updateRule(rule);
		
	}

}
