package nike;



public class Nike {

	public String nikeDirect ;
	
	
	public Nike(String nikeDirect) {
		super();
		this.nikeDirect = nikeDirect;
	}


	public void register(Form form) {
		String[] menus = form.getMenu();
		System.out.println("========="+nikeDirect + "지점, 나이키 상품 ===========");
		for (int i = 0; i < menus.length; i++) {
			System.out.println(i+1+"."+menus[i]);
		}
		
		form.sell("에어조던");
		
		
	}
	public void register() {

			System.out.println("무료나눔 직영점");
			System.out.println();
	}
	
}
