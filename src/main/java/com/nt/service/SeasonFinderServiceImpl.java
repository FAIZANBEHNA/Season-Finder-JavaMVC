package com.nt.service;

import java.time.LocalDateTime;

import org.springframework.stereotype.Service;

@Service("seasonService")
public class SeasonFinderServiceImpl implements ISeasonFinderService {

	@Override
	public String findSeason() {
			
			LocalDateTime ldt = LocalDateTime.now();
			int month = ldt.getMonthValue();
			if(month>=6 && month<=10)
				return "Rainy Season";
			else if(month>=3 && month<=5)
				return "Summer Season";
			else
			return "Winter Season";
		}
	}




