package com.fourmeeting.bee.bees.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BeesController {
	@RequestMapping(value="/beesInvite.do")
	public String beesInvite()
	{
			return "bees/beesInvite";
		
	}	
	@RequestMapping(value="/add.do")
	public String add()
	{
			return "bees/add";
		
	}
	
	@RequestMapping(value="/beeCreateMain.do")
	public String beeCreateMain()
	{
			return "bees/beeCreate/Main";
		
	}	
	@RequestMapping(value="/beeCreateSub.do")
	public String beeCreateSub()
	{
			return "bees/beeCreate/Sub";
		
	}
	
	@RequestMapping(value="/beeSettingMain.do")
	public String beeSettingMain()
	{
			return "bees/beeSetting/Main";
		
	}
	@RequestMapping(value="/beeSettingSubCoverUpdate.do")
	public String beeSettingSubCoverUpdate()
	{
			return "bees/beeSetting/SubCoverUpdate";
		
	}
	@RequestMapping(value="/beeSettingSubType.do")
	public String beeSettingSubType()
	{
			return "bees/beeSetting/Type";
		
	}
	@RequestMapping(value="/beeSettingSubIntro.do")
	public String beeSettingSubIntro()
	{
			return "bees/beeSetting/Intro";
		
	}
	@RequestMapping(value="/beeSettingSubMaxMember.do")
	public String beeSettingSubMaxMember()
	{
			return "bees/beeSetting/MaxMember";
		
	}
	@RequestMapping(value="/beeSettingSubJoinStandard.do")
	public String beeSettingSubJoinStandard()
	{
			return "bees/beeSetting/JoinStandard";
		
	}
	@RequestMapping(value="/beeSettingSubJoinManager.do")
	public String beeSettingSubJoinManager()
	{
			return "bees/beeSetting/JoinManager";
		
	}
	@RequestMapping(value="/beeSettingSubMemberPermission.do")
	public String beeSettingSubMemberPermission()
	{
			return "bees/beeSetting/MemberPermission";
		
	}
	@RequestMapping(value="/beeSettingSubMemberWithdraw.do")
	public String beeSettingSubMemberWithdraw()
	{
			return "bees/beeSetting/MemberWithdraw";
		
	}
	
	@RequestMapping(value="/beeSettingSubMemberWithdrawDo.do")
	public String beeSettingSubMemberWithdrawDo()
	{
			return "bees/beeSetting/MemberWithdrawDo";
		
	}
	
}
