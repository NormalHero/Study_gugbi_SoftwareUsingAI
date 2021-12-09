package anonymous;

public class Nike {
	
	public String branchName;
	
	
	public void register(Form form) {
		String[] menus = form.getMenu();
		System.out.println("========="+branchName + " 상품등록 메뉴 ===========");
		for (int i = 0; i < menus.length; i++) {
			System.out.println(i+1+"."+menus[i]);
		}
		
		
		
		
		
		if(form instanceof FormAdapter) {
			
			System.out.println("무료 나눔 직영점");
			return;
		}
		form.sell("티셔츠");
		
		
	}
}
