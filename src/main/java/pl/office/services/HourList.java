package pl.office.services;

import java.util.LinkedList;
import java.util.List;

public class HourList {

	public List<String> generateHourList()
	{
		List<String> listaGodzin = new LinkedList<String>();
		listaGodzin.add("00");
		listaGodzin.add("01");
		listaGodzin.add("02");
		listaGodzin.add("03");
		listaGodzin.add("04");
		listaGodzin.add("05");
		listaGodzin.add("06");
		listaGodzin.add("07");
		listaGodzin.add("08");
		listaGodzin.add("09");
		listaGodzin.add("10");
		listaGodzin.add("11");
		listaGodzin.add("12");
		listaGodzin.add("13");
		listaGodzin.add("14");
		listaGodzin.add("15");
		listaGodzin.add("16");
		listaGodzin.add("17");
		listaGodzin.add("18");
		listaGodzin.add("19");
		listaGodzin.add("20");
		listaGodzin.add("21");
		listaGodzin.add("22");
		listaGodzin.add("23");
		return listaGodzin;
	}
	
	public List<String> generateMinutesList()
	{
		List<String> listaMinut = new LinkedList<String>();
		
		for(int i = 0; i < 60; i++)
		{
			if(i < 10)
			{
				listaMinut.add("0" + String.valueOf(i));
			} else listaMinut.add(String.valueOf(i));
		}
		
		return listaMinut;
	}
	
}
