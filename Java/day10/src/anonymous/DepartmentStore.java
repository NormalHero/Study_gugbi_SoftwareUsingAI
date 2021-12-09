package anonymous;

public class DepartmentStore {
	public static void main(String[] args) {
		
		
		Nike jamsil = new Nike();
		Nike gangnam = new Nike();
		jamsil.branchName="잠실점";
		gangnam.branchName="강남점";
		
		jamsil.register(new Form() {
			
			@Override
			public void sell(String order) {
				String[] menus = getMenu();
				for (int i = 0; i < args.length; i++) {
					System.out.println(order + "주문완료");
				}
				
			}
			
			@Override
			public String[] getMenu() {
				String[] menus = {"티셔츠","신발","바지","가방"};
				
				return menus;
			}
		});
		
					// 어뎁터클래스를 사용하여 업캐스팅을 한다
		gangnam.register(new FormAdapter() {
			@Override
			public String[] getMenu() {
				String[] menus = {"티셔츠","신발","바지","가방"};
				
				return menus;
			}

		});
		
		
	}
}
