import org.poomda.activity.ActivityType
import org.poomda.animal.Animal
import org.poomda.animal.AnimalBreed
import org.poomda.animal.AnimalType
import org.poomda.locale.Address
import org.poomda.locale.Country
import org.poomda.member.Role
import org.poomda.member.User
import org.poomda.member.UserLikeAnimal
import org.poomda.member.UserRole
import org.poomda.shelter.Shelter


class BootStrap {

    def init = { servletContext ->
		
		User admin = new User(username:'admin@admin.com', password:'admin', nickname:'admin', enabled:true).save(failOnError:true)
		User manager = new User(username:'manager@manager.com', password:'manager', nickname:'manager', enabled:true).save(failOnError:true)
		User user = new User(username:'user@user.com', password:'user',  nickname:'user', enabled:true).save(failOnError:true)
		
		def roleAdmin = Role.findOrSaveWhere(authority:"ROLE_ADMIN").save(failOnError:true)
		def roleManager = new Role(authority: 'ROLE_MANAGER').save(failOnError:true)
		def Role roleUser = new Role(authority: 'ROLE_USER').save(failOnError:true)
		
		UserRole.create admin, roleAdmin, true
		UserRole.create manager, roleManager, true
		UserRole.create user, roleUser, true

		def at1 = new AnimalType(name:'dog',nameKor:'개',description:'baowao').save()
		def at2 = new AnimalType(name:'cat',nameKor:'고양이', description:'nio').save()
		
		def s1 = new Shelter(name:'남양주 보호소', address:'경기-남양주', user:admin, introduction:
			'경기도 남양주시에 위치하여 2011년부터 여러 봉사자들과 함께 동물들을 보호해 오고 있습니다. 강아지,고양이 합쳐서 100여마리 규모의 보호소 입니다.').save(failOnError:true)
		def s2 = new Shelter(name:'마석보호소', address:'마석', user:admin, introduction:
			'마석에 위치하여 2011년부터 여러 봉사자들과 함께 동물들을 보호해 오고 있습니다. 강아지,고양이 합쳐서 200여마리 규모의 보호소 입니다.').save(failOnError:true)
		
		new AnimalBreed(register:admin,animalType:at1,name:'골든 리트리버',nameKor:'골든 리트리버').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'래브라도 리트리버',nameKor:'래브라도 리트리버').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'도베르만',nameKor:'도베르만').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'말티즈',nameKor:'말티즈').save(failOnError:true)
		def ab1 = new AnimalBreed(register:admin,animalType:at1,name:'말라뮤트',nameKor:'말라뮤트').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'미니어처 닥스훈트',nameKor:'미니어처 닥스훈트').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'비글',nameKor:'비글').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'셰클랜드 십독',nameKor:'셰클랜드 십독').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'시추',nameKor:'시추').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'슈나우져',nameKor:'슈나우져').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'아메리칸 코커 스파니엘',nameKor:'아메리칸 코커 스파니엘').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'아프간 하운드',nameKor:'아프간 하운드').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'와이어 폭스 테리어',nameKor:'와이어 폭스 테리어').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'요크셔테리어',nameKor:'요크셔테리어').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'이탈리안 그레이 하운드',nameKor:'이탈리안 그레이 하운드').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'잉글리시 코커 스파니엘',nameKor:'잉글리시 코커 스파니엘').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'웰시 코기 펨브로크',nameKor:'웰시 코기 펨브로크').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'진돗개',nameKor:'진돗개').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'치와와(롱코트)',nameKor:'치와와(롱코트)').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'토이푸들',nameKor:'토이푸들').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'파피용',nameKor:'파피용').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'퍼그',nameKor:'퍼그').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'포메라니안',nameKor:'포메라니안').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at1,name:'프렌치 불독',nameKor:'프렌치 불독').save(failOnError:true)
		
		
		new AnimalBreed(register:admin,animalType:at2,name:'페르시안',nameKor:'페르시안').save(failOnError:true)
		def ab2 = new AnimalBreed(register:admin,animalType:at2,name:'샴',nameKor:'샴').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'브리티시 쇼트',nameKor:'브리티시 쇼트').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'헤어',nameKor:'헤어').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'아비시니안',nameKor:'아비시니안').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'메인쿤',nameKor:'메인쿤').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'아메리칸 쇼트',nameKor:'아메리칸 쇼트').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'헤어',nameKor:'헤어').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'벵골',nameKor:'벵골').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'스핑크스',nameKor:'스핑크스').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'래그돌',nameKor:'래그돌').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'엑조틱 쇼트헤',nameKor:'엑조틱 쇼트헤').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'어',nameKor:'어').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'버미즈',nameKor:'버미즈').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'버먼',nameKor:'버먼').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'스코티시 폴드',nameKor:'스코티시 폴드').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'러시안 블루',nameKor:'러시안 블루').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'노르웨이숲',nameKor:'노르웨이숲').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'히말라얀',nameKor:'히말라얀').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'시베리안 고양',nameKor:'시베리안 고양').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'이',nameKor:'이').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'맹크스',nameKor:'맹크스').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'사바나',nameKor:'사바나').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'먼치킨',nameKor:'먼치킨').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'터키시 앙고라',nameKor:'터키시 앙고라').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'데본렉스',nameKor:'데본렉스').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'코니시 렉스',nameKor:'코니시 렉스').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'봄베이',nameKor:'봄베이').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'발리니즈',nameKor:'발리니즈').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'아메리칸 밥테',nameKor:'아메리칸 밥테').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'일',nameKor:'일').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'샤르트뢰',nameKor:'샤르트뢰').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'재패니즈밥테일',nameKor:'재패니즈밥테일').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'이집션 마우',nameKor:'이집션 마우').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'아메리칸 컬',nameKor:'아메리칸 컬').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'터키시 반',nameKor:'터키시 반').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'오시캣',nameKor:'오시캣').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'싱가푸라',nameKor:'싱가푸라').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'톤키니즈',nameKor:'톤키니즈').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'소말리 고양이',nameKor:'소말리 고양이').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'아메리칸 와이',nameKor:'아메리칸 와이').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'어헤어',nameKor:'어헤어').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'코랏',nameKor:'코랏').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'컬러포인트 숏',nameKor:'컬러포인트 숏').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'헤어',nameKor:'헤어').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'셀커크 렉스',nameKor:'셀커크 렉스').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'오리엔탈 쇼트',nameKor:'오리엔탈 쇼트').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'헤어',nameKor:'헤어').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'자바니즈',nameKor:'자바니즈').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'스노우슈',nameKor:'스노우슈').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'라가머핀',nameKor:'라가머핀').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'하바나 브라운',nameKor:'하바나 브라운').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'픽시 밥',nameKor:'픽시 밥').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'킴릭',nameKor:'킴릭').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'라팜',nameKor:'라팜').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'토이거',nameKor:'토이거').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'버밀라',nameKor:'버밀라').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'쵸시',nameKor:'쵸시').save(failOnError:true)
		new AnimalBreed(register:admin,animalType:at2,name:'네벨룽',nameKor:'네벨룽').save(failOnError:true)
		
		5.times{
			new Animal(shelter:s1, name:'말라뮤트', user : admin, status : '개인보호중', breed:ab1, gender:'수컷', age:'2살', furColor:'실버그레이',feature:'꼬리에 까만 무늬 있음', weight:'1kg').save(failOnError:true)
		}
		def animal1 = new Animal(shelter:s2, name:'doggi', user : admin, status : '개인보호중', breed:ab1, gender:'수컷', age:'1살', furColor:'white',weight:'1kg').save(failOnError:true)
		def animal2 = new Animal(shelter:s2,name:'cathy', user : admin, status : '개인보호중', breed:ab2, gender:'암컷', age:'5개월', furColor:'black',weight:'1kg').save(failOnError:true)
		new Animal(name:'cathy', user : admin, status : '개인보호중', breed:ab2, gender:'암컷', age:'3개월', furColor:'점박이',weight:'1kg').save(failOnError:true)
		
		new UserLikeAnimal(user: admin, animal: animal1).save(failOnError:true)
		new UserLikeAnimal(user: manager, animal: animal1).save(failOnError:true)
		
		def country = new Country(name:'korea',language:'korean').save(failOnError:true)
		
		new Address(country:country, state:'경기도').save(failOnError:true)
		new Address(country:country, state:'강원도').save(failOnError:true)
		new Address(country:country, state:'경상남도').save(failOnError:true)
		new Address(country:country, state:'경상북도').save(failOnError:true)
		new Address(country:country, state:'광주광역시').save(failOnError:true)
		new Address(country:country, state:'대구광역시').save(failOnError:true)
		new Address(country:country, state:'대전광역시').save(failOnError:true)
		new Address(country:country, state:'부산광역시').save(failOnError:true)
		new Address(country:country, state:'서울특별시').save(failOnError:true)
		new Address(country:country, state:'세종특별자치시').save(failOnError:true)
		new Address(country:country, state:'울산광역시').save(failOnError:true)
		new Address(country:country, state:'인천광역시').save(failOnError:true)
		new Address(country:country, state:'전라남도').save(failOnError:true)
		new Address(country:country, state:'전라북도').save(failOnError:true)
		new Address(country:country, state:'제주특별자치도').save(failOnError:true)
		new Address(country:country, state:'충청남도').save(failOnError:true)
		new Address(country:country, state:'충청북도').save(failOnError:true)
		
		
		new ActivityType(name:'청소').save(failOnError:true)
		new ActivityType(name:'미용').save(failOnError:true)
		new ActivityType(name:'의료').save(failOnError:true)
		new ActivityType(name:'보수').save(failOnError:true)
		new ActivityType(name:'기타').save(failOnError:true)
	}
    def destroy = {
    }
}
