package vo;

public class BoxOfficeVO {
	private int ranking;     
	private String name;     
	private String releaseDate;   
	private long income; // 매출액이 1375이 1등이다 -21 ~ 21억까지인 4바이트 int로는 불가능하다.
	private int audience;
	private int screenCount;

	public BoxOfficeVO() {;}




	public BoxOfficeVO(int ranking, String name, String releaseDate, long income, int audience, int screenCount) {
		super();
		this.ranking = ranking;
		this.name = name;
		this.releaseDate = releaseDate;
		this.income = income;
		this.audience = audience;
		this.screenCount = screenCount;
	}




	public int getRanking() {
		return ranking;
	}

	public void setRanking(int ranking) {
		this.ranking = ranking;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}




	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public long getIncome() {
		return income;
	}

	public void setIncome(long income) {
		this.income = income;
	}

	public int getAudience() {
		return audience;
	}

	public void setAudience(int audience) {
		this.audience = audience;
	}

	public int getScreenCount() {
		return screenCount;
	}

	public void setScreenCount(int screenCount) {
		this.screenCount = screenCount;
	}


	@Override
	public String toString() {
		String str = ranking+ "\t"+ name + "\t" + releaseDate + "\t" + income + "\t"
				+ audience + "\t" + screenCount;
		return str;
	}



	@Override
	public boolean equals(Object obj) {
		if(this == obj) {
			return true;
		}
		if(obj instanceof BoxOfficeVO) {
			BoxOfficeVO  vo = (BoxOfficeVO) obj;
			if(this.getRanking() == vo.getRanking()) {
				return true;
			}
		}

		return false;
	}
	
	@Override
	public int hashCode() {
		
		return this.getRanking();
	}




}
