package nike;

public class Shop {
	public static void main(String[] args) {

		Nike[] nikeShop = { new Gangnam("강남"),new Busan("부산")};
		Nike Gangnam = new Gangnam("강남");
		Nike Busan = new Busan("부산");

		
//		
//		for (int i = 0; i < nikeShop.length; i++) {
//			if(nikeShop[i] instanceof FreeShop)
//		}
		
		
		
		for (int i = 0; i < nikeShop.length; i++) {
			if(nikeShop[i] instanceof FreeShop) {
				nikeShop[i].register();
			}else {
				nikeShop[i].register(new Form() {

					public void sell(String order) {
						String[] menus = getMenu();
						
						for (int i = 0; i < menus.length; i++) {

							if(menus[i].equals(order)) {
								System.out.println(order + "주문완료");
								break;
							}
						}
					}

					public String[] getMenu() {
						String[] menus = {"에어조던", "슈퍼플라이","레깅스","패딩"};
						return menus;
					}
				});
			}
		}
		
		
		




	}



}


