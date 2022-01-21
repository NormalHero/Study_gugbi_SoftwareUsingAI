package controller;




import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class CoronaController {
	private WebDriver driver;
	private String url;
	
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static final String WEB_DRIVER_PATH = "C:/chromedriver.exe";

	public CoronaController() {
//		세팅
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);	
		
	ChromeOptions options = new ChromeOptions();
		options.addArguments("headless");
		driver = new ChromeDriver(options);
		url = "https://corona-live.com";
		driver.get(url);
	}
	
	
	
	
	
	public void operate() {
//		searchArea();
		driver.close();
		driver.quit();
	
	}
	

	
	public String totalCorona() {
		String result="";
		try{
			driver.findElement(By.cssSelector("c-eXgEiQ"));
		}catch(Exception e){
			result = driver.findElement(By.cssSelector("div.c-ftcwwt div.c-eXgEiQ")).getText();
		}		
		try {Thread.sleep(1000);} catch (InterruptedException e) {;}
		

		result = result.replaceAll(",", "");
		result = result.replaceAll("명", "");
		return result;
	}

	
	
	public String findRegion(String region) {
		String data = "";
		List<WebElement> regions =driver.findElements(By.cssSelector("div.gnb + div a ")); 
		try {Thread.sleep(1000);} catch (InterruptedException e) {;}
		for (int i = 0; i < regions.size(); i++) {
			
			if (region.equals(regions.get(i).getAttribute("innerHTML"))) {
				data = getRegionCorona(regions.get(i).getAttribute("href"));
				break;
			}
			
		}
		
		data = data.replaceAll(",", "");
		data = data.replaceAll("명", "");
		
		return data;
		
	}
	
	public String getRegionCorona(String cityHref) {
		cityHref = cityHref.substring(23,cityHref.length());
//		System.out.println(cityHref);
		 String data = driver.findElement(By.cssSelector("a[href=\""+cityHref+"\"] div.c-davuDQ " )).getAttribute("innerHTML");
		return data;
	}
	
	public static void main(String[] args) {
		CoronaController c = new CoronaController();
//		c.operate();
		
		
		System.out.println(c.findRegion("경기"));

		
		
		c.operate();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}