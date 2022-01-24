package view;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

import controller.CoronaController;
import controller.userController;
import dao.UserDAO;
import dao.UserRecordDAO;
import vo.UserRecordVO;
import vo.UserVO;

public class MainView {
	public static void main(String[] args) {

		String chatBotName ="빡빡이 아저씨";
		String userMsgTab = "\t\t\t\t\t";


		UserDAO uDAO = new UserDAO();
		UserRecordDAO recordDAO = new UserRecordDAO();
		userController userC = new userController();
		CoronaController coranaC = new CoronaController();

		Scanner sc = new Scanner(System.in);
		int choice = 0 ;
		boolean JoinCk = false; // 회원가입이후 바로 로그인을 위한 값


		String id = "";
		String pw = "";



		while(true) {
			boolean cancelLogin = true; // 로그인취소시 다시 반복을 할 수 있게 true로 설정
			if (!JoinCk) {


				System.out.println();
				System.out.println("당신의 건강을 지켜드리는 "+chatBotName+"입니다!");
				System.out.println();

				try {Thread.sleep(1000);} catch (InterruptedException e) {;}
				System.out.println(chatBotName+"가 처음 이신가요?");
				System.out.println("1.네  2.아니요  3.비밀번호 찾기  4.나가기 " );
				choice = sc.nextInt();
			}else {
				choice = 2;
			}
			if (choice == 1) {
				// 회원가입
				try {Thread.sleep(300);} catch (InterruptedException e) {;}
				System.out.println(userMsgTab+"네 처음 이용합니다.");
				try {Thread.sleep(1000);} catch (InterruptedException e) {;}
				System.out.println(chatBotName+"가 회원가입을 도와줄게요!");
				// 회원가입 
				// 회원가입 메소드 사용

				try {Thread.sleep(1000);} catch (InterruptedException e) {;}

				String name = "";
				int genderChoice = 0;
				String PhoneNum ="";
				String  birthdayBeforeAge = "";
				char gender = 'F'; 
				int regionChoice = 0;
				String region= "";

				UserVO user = new UserVO();

				boolean joinFlag = true;
				while(true) {
					boolean flag = false;
					System.out.println("사용할 아이디를 입력해주세요! :");
					id = sc.next();

					// 아이디 중복체크  , 정규화
					//				userC.id
					if(uDAO.checkId(id)== -1 ) {
						flag = true;
					}else {
						System.out.println("이미 존재하는 ID입니다 ㅠㅠ ");
						continue;
					}

					if (userC.idFromCk(id)) {
						flag = true;
					}else {
						System.out.println("5~12자 영문 대 소문자 숫자를 사용해주세요. (영어로 시작해야하며  '_'를 제외한 특수문자는사용할 수 없습니다)");
						continue;
					}

					if(flag) {break;}

				}

				while(true) {
					System.out.println("사용할 비밀번호를 입력해주세요! :");
					pw = sc.next();
					String result = userC.passwordFromCk(pw);
					if(result.equals("pass")) {
						break;
					}else {
						System.out.println(result);
						continue;
					}
				}


				int pwChance = 4;
				while(true) {
					System.out.println("비밀번호 확인을 위해 한번 더 비밀번호를 입력해주세요! :");
					String ckPw = sc.next();

					if (userC.passwordCk(pw,ckPw)) {
						break;
					}else {
						System.out.println("비밀번호가 일치 하지 않습니다 ㅠㅠ");
						System.out.println("다시 시도 해주세요! ("+pwChance+"회 남음)");
						pwChance--;
						if (pwChance == 0) {
							System.out.println("5회 이상 실패하였습니다... 다시 시도해주세요!");
							joinFlag = false;
							break;
						}
						continue;
					}
				}

				if (!joinFlag) {
					continue;
				}

				while(true) {
					System.out.println("이름을 알려주세요!"); // 중복검사 필요
					name = sc.next(); // 한글만 들어가게 메소드 구현@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
					if (userC.ckName(name)) {
						break;	
					}else {
						System.out.println("한글만 입력 해주세요 ㅠㅠ");
					}
				}

				while(true) {
					System.out.println("성별을 알려주세요!");
					System.out.println("1. 남자  2. 여자");
					// 성별 선택 로직
					genderChoice = sc.nextInt();
					if (genderChoice > 2 || genderChoice <= 0) {
						System.out.println(chatBotName+"가 모르는 입력입니다... ");
					}else {
						gender = userC.getGender(genderChoice);
						break;
					}

				}
				// 전화번호 유효성 검사
				while(true) {
					System.out.println("전화번호를 알려주세요!");
					PhoneNum = sc.next(); 
					if(userC.phonNumCk(PhoneNum)) {
						break;
					}else {
						System.out.println("잘못된 전화번호입니다.");
						continue;
					}
				}

				int ageYear  = 0;
				int ageMonth = 0;
				int ageMount = 0;
				while(true) {
					System.out.println("생일를 알려주세요!");
					System.out.println("몇 년도에 태어나셨나요? ex) 1985");
					ageYear = sc.nextInt();
					if(ageYear < 0) {
						System.out.println("정말인가요?..."+chatBotName+"은 인정할 수 없어요..! "+" 다시 입력해주세요!");
						continue;
					}
					break;
				}

				while(true) {
					System.out.println("몇월에 태어나셨나요? ex) 3");
					ageMonth = sc.nextInt();
					if (ageMonth <= 0 || ageMonth > 12) {
						System.out.println("1월~12월 사이에 태어나지 않으셨나요? "+chatBotName+"이랑 지옥훈련 하고 싶으신가요?");
						continue;
					}
					break;
				}

				while(true) {
					System.out.println("몇 일에 태어나셨나요? ex) 25");
					ageMount = sc.nextInt();
					if (ageMonth == 2) {
						if (ageMount <= 0 || ageMount > 28 ) {
							System.out.println("없는 날짜입니다.. 다시 입력해주세요!");
							continue;
						}
					}else if(ageMonth % 2 == 0) {
						if (ageMount <= 0 || ageMount > 31 ) {
							System.out.println("없는 날짜입니다.. 다시 입력해주세요!");
							continue;
						}
					}else {
						if (ageMount <= 0 || ageMount > 30 ) {
							System.out.println("없는 날짜입니다.. 다시 입력해주세요!");
							continue;
						}
					}

					break;
				}


				birthdayBeforeAge +=  ageYear+"-"+ageMonth+"-"+ageMount;







				while(true) {
					String[] regionData = {"서울","경기", "인천", "강원", "충북", "울산","부산", "대구", "광주", "대전"
							, "세종", "충남", "경북", "경남", "전북", "전남", "제주"};
					for (int i = 0; i < regionData.length; i++) {
						System.out.print(i+1+". "+regionData[i]+"\t");
						if( (i+1) % 5 == 0) {
							System.out.println();
						}
					}
					System.out.println();
					System.out.println();
					System.out.println("거주지를 선택해주세요!");
					regionChoice = sc.nextInt();
					if (regionChoice > 0 && regionChoice <= regionData.length) {
						region = userC.getRegion(regionChoice);
						break;
					}else {
						System.out.println(chatBotName+"가 모르는 입력입니다...");
					}


				}







				// 메소드로 거주지 번호를 에 따른 지역  String 리턴 


				Date resultDate = Date.valueOf(birthdayBeforeAge); // 스트링을 Date 타입으로 변경

				user.setUserId(id); // 중복검사 전
				user.setUserPw(pw); // 유효성 검사 구현 전 
				user.setUserName(name); 
				user.setUserGender(gender); // 선택 구현 전
				user.setUserPhoneNum(PhoneNum); // 유효성 검사 구현전
				user.setUserAge(resultDate); 
				user.setUserRegion(region); // 선택지 구현전

				if (uDAO.join(user)) {
					System.out.println("회원가입 성공!! 축하해요 이제"+chatBotName+"를 이용할 수 있어요!");
					JoinCk = true;
					continue;
				}else {
					System.out.println("=====확인되지 않은 오류가 발생했습니다 ... 빠른 시일내에 복구하겠습니다 다시 시도해주세요!=====");
				}




			}else if(choice == 2) {

				// 로그인
				if (!JoinCk) {
					try {Thread.sleep(300);} catch (InterruptedException e) {;}
					System.out.println(userMsgTab+"네 이용해봤어요");
				}
				try {Thread.sleep(1000);} catch (InterruptedException e) {;}
				System.out.println(chatBotName+"의 도움을 받기 위해서는 로그인을 해야해요!");
				System.out.println();
				while(cancelLogin) {
					try {Thread.sleep(1000);} catch (InterruptedException e) {;}
					System.out.println("아이디를 입력하세요! ");
					id = sc.next();
					System.out.println("비밀번호를 입력하세요! ");
					pw = sc.next();


					if( uDAO.login(id, pw) ) {
						// 로그인 성공 
						try {Thread.sleep(1000);} catch (InterruptedException e) {;}
						System.out.println("로그인에 성공했어요!");
						System.out.println();
						System.out.println(chatBotName+"가 무엇을 도와드릴까요?");
						// 선택지 제공


						while(true){
							// 선택지 제공
							System.out.println("1. 마이페이지\n2. 오늘의 운동 추천\n3. 운동 기록하기 \n4. 나가기");
							choice = sc.nextInt();
							ArrayList<UserRecordVO> records =new ArrayList<>();
							UserVO user = new UserVO();
							if(choice == 1){
								boolean myPageFlag = true;
								int myinfochoice = 0;
								user = uDAO.getMyInfo();
								String repw = "";
								System.out.println("비밀번호 재확인");
								repw = sc.next();
								// vo비밀번호랑 입력받은 비밀번호랑 같은지 확인
								if(user.getUserPw().equals(uDAO.encrypt(repw))) {
									System.out.println("확인되었습니다 !");
								}else {
									System.out.println("비밀번호가 틀리셨습니다." );
									System.out.println();
									continue;
								 }
								

								//자기정보 
								java.util.Date utilDate = user.getUserAge(); //현재 날짜(자바 객체)

								System.out.println();
								System.out.println(user.getUserName()+"님의 마이페이지입니다!");

								System.out.println();
								while(myPageFlag) {
									System.out.println("수정 하려면 나의 정보를 선택하세요.");
									System.out.println("1.아이디 ▶ " + user.getUserId());
									System.out.println("2.이름▶ " + user.getUserName());
									System.out.println("3.전화번호 ▶ " + user.getUserPhoneNum());
									System.out.println("4.지역 ▶ " + user.getUserRegion());
									System.out.println("5.(만)나이 ▶ " + "만" + uDAO.getAge(utilDate)  + "살");
									System.out.println("6.비밀번호 변경하기");
									System.out.println("7.나가기");
									System.out.println();
									System.out.println("원하는 버튼을 선택해 주세요");
									//회원정보 수정



									myinfochoice = sc.nextInt();
									if(myinfochoice == 1) {
										System.out.println("죄송합니다.\n아이디 수정은 불가 합니다^^;");
										continue;
									}else if(myinfochoice == 2) {
										while(true) {
											System.out.println("이름을 알려주세요!"); 
											String updateName = sc.next(); // 
											if (userC.ckName(updateName)) {
												user.setUserName(updateName);
												break;	
											}else {
												System.out.println("한글만 입력 해주세요 ㅠㅠ");
											}
										}
									}

									else if(myinfochoice == 3){
										System.out.println("전화번호수정하기");   
										String userPhoneNum = "";
										// 전화번호 유효성 검사
										while(true) {
											System.out.println("변경할 전화번호를 알려주세요!");
											userPhoneNum = sc.next(); 
											if(userC.phonNumCk(userPhoneNum)) {
												user.setUserPhoneNum(userPhoneNum);
												break;
											}else {
												System.out.println("잘못된 전화번호입니다.");
												continue;
											}
										}
										user.setUserPhoneNum(userPhoneNum);
									}else if(myinfochoice == 4) {
										while(true) {
											int regionChoice = 0 ;
											String updateRegion = "";
											String[] regionData = {"서울","경기", "인천", "강원", "충북", "울산","부산", "대구", "광주", "대전"
													, "세종", "충남", "경북", "경남", "전북", "전남", "제주"};
											for (int i = 0; i < regionData.length; i++) {
												System.out.print(i+1+". "+regionData[i]+"\t");
												if( (i+1) % 5 == 0) {
													System.out.println();
												}
											}
											System.out.println();
											System.out.println();
											System.out.println("변경할 거주지를 선택해주세요!");
											regionChoice = sc.nextInt();
											if (regionChoice > 0 && regionChoice <= regionData.length) {
												updateRegion = userC.getRegion(regionChoice);
												user.setUserRegion(updateRegion);
												break;
											}else {
												System.out.println(chatBotName+"가 모르는 입력입니다...");
												continue;
											}


										}
									}else if(myinfochoice == 5){
										System.out.println("나이 수정하기");
									}else if(myinfochoice == 6) {
										while(true) {
											System.out.println("변경할 비밀번호를 입력해주세요! :");
											pw = sc.next();
											String result = userC.passwordFromCk(pw);
											if(result.equals("pass")) {
												user.setUserPw(pw);
												break;
											}else {
												System.out.println(result);
												continue;
											}
										}

									}else if(myinfochoice == 7){
										System.out.println("뒤로 가기");
										myPageFlag = false;
										break;


									}else {
										System.out.println(chatBotName+"가 모르는 입력입니다... 이전 작업을 다시 시도합니다.");
										continue;
									}


									if(uDAO.updateMyInfo(user)) {
										System.out.println("정보를 수정하였습니다!");
									}else {
										System.out.println("정보를 수정하지 못했어요 ㅠㅠ");
									}
									break;
								}





							}else if(choice == 2){
								//  2. 코로나 크롤링			
								// 2-1. searchArea()로 로그인한 유저의 지역과 비교하여 값 가져오기
								//  2-2. 300명 이하이면 야외운동을 추천합니다 출력    				(향상 -> 운동 리스트중랜덤출력도 가능하다)
								//  2-3. 300명 이상이면 홈트레이닝을 추천합니다 출력 				(향상-> 홈 트레이닝 운동 랜덤출력)
								user = uDAO.getMyInfo();
								System.out.println("코로나 확진자를 통한 운동추천");
								int  coranaCnt = 0;


								String data =coranaC.findRegion(user.getUserRegion());

								System.out.println( user.getUserName()+"님의 현재 설정 지역은 "+user.getUserRegion()+"입니다.");
								System.out.println( user.getUserRegion()+"의 금일 확진자 수는 "+data+"명 입니다." );
								if (data != null) {

									coranaCnt = Integer.parseInt(data) ;
									if( coranaCnt >= 300) {
										// 이상
										System.out.println("홈 트레이닝을 추천합니다");
										while(true) {
											 UserDAO dao = new UserDAO();
										      UserRecordDAO rDao = new UserRecordDAO();
										      
										      user.setUserId("user1");      
										      String[]  upperExercise = {"팔굽혀펴기","스파이더 플랭크","슈퍼맨로우"};
										      String[]  lowerExercise = {"기본 스쿼트 ","내로우 스쿼트","프론트 런지 ","벤치 런지 ","점프 스쿼트"};
										      Random random = new Random();
										      
										      

										      int exChoice = 0;
										      int recordCount = 0;
										      int recordTime = 0;
										      
										      String result = "";
										      while (true) {
										         System.out.println("1.상체운동 2.하체운동");
										         exChoice = sc.nextInt(); 
										         if (exChoice == 1) {
										            
										             result = upperExercise[random.nextInt(upperExercise.length)];
										             break;
										            
										         }else if(exChoice == 2) {

										             result =upperExercise[random.nextInt(lowerExercise.length)];
										             break;
										         }else {
										            
										            System.out.println("빡빡이가 아저씨가 모르는 값이에요..");
										            continue;
										         }
										      }
										      System.out.println("빡빡이 아저씨의 추천 홈트레이닝은 "+result+"입니다!");
										      System.out.println("운동을 시작해주세요!");
										      System.out.println();
										      System.out.println("운동을 기록합니다!");
										      
										      while(true) {
										         System.out.println(result+"를 몇 회 하셨나요?");
										         recordCount = sc.nextInt();
										         if (recordCount <= 0  ) {
										            System.out.println("적어도 1개는 하셨어야죠...다시 하고 오세요!");
										            continue;
										         }else if(recordCount > 1000 ) {
										            System.out.println("너무 심한 운동은 오히려 건강에 좋지 않습니다 ... 다음엔 운동량을 줄여보세요!");
										            break;
										         }
										         break;
										      }
										      
										      while(true) {
										         System.out.println("운동한 시간을 알려주세요!");
										         System.out.println("시간 :");
										         recordTime += sc.nextInt()*3600;
										         System.out.println("분 : ");
										         recordTime += sc.nextInt()*60;
										         System.out.println("초 : ");
										         recordTime += sc.nextInt();
										         if (recordTime <= 0  ) {
										            System.out.println("운동을 하신게 맞나요... 적어도 1초는 하셔야죠!  ");
										            continue;
										         }else if(recordTime >= 10800 ) { // 3시간
										            System.out.println("너무 심한 운동은 오히려 건강에 좋지 않습니다 ... 다음엔 운동량을 줄여보세요!");
										            break;
										         }
										         break;
										      }
										      
										      
										      
//										      UserRecordVO rVo = new UserRecordVO(user.getUserId(), recordTime, result, recordCount);
										      UserRecordVO rVo = new UserRecordVO();
										      
										      rDao.insertRecord(rVo);

										      continue;
										}
										//while문으로  홈 트레이닝 중 상체와 하체 운동을 사용자에게 입력받음
										// 고른 부위의 운동 리스트를 선택하게 하여 바로 기록할지 말지를 입력받음
										// 바로 기록한다면 랜덤으로 나온 운동의 기록을 시작함

									}else {
										// 이하 
										System.out.println("야외 운동을 해보는건 어떨까요?");
										continue;
									}
									//
								}else {
									String data2 = coranaC.totalCorona();
									System.out.println("현재 지역별 코로나 확진자를 불러올 수 없습니다.");
									System.out.println("전체 지역의 코로나 확진자를 기준으로 알려드립니다!");

									coranaCnt = Integer.parseInt(data2) ;
									if( coranaCnt>= 1000) {
										// 이상
										System.out.println("홈 트레이닝을 추천합니다!");
										continue;
									}else {
										// 이하 
										System.out.println("야외 운동을 해보는건 어떨까요?");
										continue;
									}



								}
							}else if(choice ==3){
								user = uDAO.getMyInfo();
								ArrayList<UserRecordVO> recods = recordDAO.getALLRecord(user.getUserId()) ;
								/*								for(UserRecordVO v:recods) {

									System.out.println(" ■■■■■ 운동기록 보기 ■■■■■");
									System.out.println("| 날짜 :"+v.getRecordDate()+" | "+v.getUserId()+"님");
									System.out.println("| "+v.getRecordExercise()+" |");
									System.out.println("| "+v.getRecordTime()+"초"+" |");
									System.out.println("| "+v.getRecordCount()+"번"+" |");
								}*/

								System.out.println(" ■■■■■ 운동기록 보기 ■■■■■");
								for (int i = 0; i < recods.size(); i++) {


									System.out.println("| 날짜 : "+recods.get(i).getRecordDate()+" | "+recods.get(i).getUserId()+"님");
									System.out.println("▶"+recods.get(i).getRecordExercise());
									System.out.println("▶"+recods.get(i).getRecordTime()+"초");
									System.out.println("▶"+recods.get(i).getRecordCount()+"번");
									System.out.println();
								}



							}else if(choice == 4){//나가기
								cancelLogin = false;
								break;
							}else {
								System.out.println(chatBotName+"가 모르는 입력입니다... 이전 작업을 다시 시도합니다.");
							}
						}               



						// 3 성우님










					}else {
						// 로그인 실패
						try {Thread.sleep(1000);} catch (InterruptedException e) {;}
						System.out.println(" 로그인에 실패 했어요 ㅠㅠ ");
						System.out.println(" 1. 로그인 다시 시도하기  \n 2. 이전으로 돌아가기");
						System.out.println();
						System.out.println();

						choice = sc.nextInt();
						if (choice == 1) {
							continue;
						}else if (choice == 2) {
							JoinCk = false;
							cancelLogin = false;
							break;
						}else {
							System.out.println(chatBotName+"가 모르는 입력입니다... 이전 작업을 다시 시도합니다.");
							continue;
						}

					}
				}



			}else if(choice == 3) {
				// 비밀번호 찾기  
				System.out.println(userMsgTab+"비밀번호를 까먹었어요.");
				try {Thread.sleep(1000);} catch (InterruptedException e) {;}
				System.out.println("걱정 말아요 ! 이"+chatBotName+"가 해결해줄께요! ");
				try {Thread.sleep(500);} catch (InterruptedException e) {;}
				System.out.println("전화번호를 입력해주세요!");
				String useFindPhonNum = sc.next();
				System.out.println("아이디를 입력해주세요!");
				id = sc.next();

				if(uDAO.sendNumber(useFindPhonNum,id)) {
					System.out.println("전송받으신 확인 문자를 입력해 주세요!");
					String ckSendNumber = sc.next();
					if(uDAO.checkNumber(ckSendNumber)) {
						System.out.println("인증번호 확인 성공!");
						System.out.println("임시 비밀번호를 발급 해드릴께요!");
						uDAO.sendTempPw(useFindPhonNum); // 발급후 문자 메시지 전송
						uDAO.updateTempPw(id); //DB에 임시비밀번호 업데이트 
						System.out.println("임시 비밀번호 발급성공!");
						System.out.println("발급 받으신 비밀번호로 로그인해주세요!");
					}else {
						System.out.println("인증번호 확인에 실패 했습니다..ㅠㅠ 다시 시도 해주세요!");
						continue;
					}
				}else{
					System.out.println("정보를 찾을수 없습니다.");
				};

			}else if(choice == 4 ) {
				System.out.println(userMsgTab+"그만할래요.");
				try {Thread.sleep(1000);} catch (InterruptedException e) {;}
				System.out.println(" 또 도움이 필요하면"+chatBotName+"를 찾아오세요! ");
				try {Thread.sleep(1000);} catch (InterruptedException e) {;}
				System.out.println(chatBotName+"가 퇴장했습니다. ");
				JoinCk = false;
				break;
			}else {
				try {Thread.sleep(1000);} catch (InterruptedException e) {;}
				System.out.println(chatBotName+"가 모르는 입력입니다... 이전 작업을 다시 시도합니다.");
				//JoinCk = false; 
				continue;

			}




		}

	}

}
