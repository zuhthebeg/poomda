import org.poomda.animal.Animal
import org.poomda.animal.AnimalBreed
import org.poomda.animal.AnimalStatus
import org.poomda.animal.AnimalType
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
		
		def as1 = new AnimalStatus(status:'protect', statusKor:'보호중').save()
		def as2 = new AnimalStatus(status:'complete', statusKor:'입양완료').save()
		def as3 = new AnimalStatus(status:'savige', statusKor:'야생').save()

		def s1 = new Shelter(user : admin, name:'남양주 보호소',address : '경기-남양주').save(failOnError:true)
		
		new AnimalBreed(name:'골든 리트리버',nameKor:'골든 리트리버').save(failOnError:true)
		new AnimalBreed(name:'래브라도 리트리버',nameKor:'래브라도 리트리버').save(failOnError:true)
		new AnimalBreed(name:'도베르만',nameKor:'도베르만').save(failOnError:true)
		new AnimalBreed(name:'말티즈',nameKor:'말티즈').save(failOnError:true)
		def ab1 = new AnimalBreed(name:'말라뮤트',nameKor:'말라뮤트').save(failOnError:true)
		new AnimalBreed(name:'미니어처 닥스훈트',nameKor:'미니어처 닥스훈트').save(failOnError:true)
		new AnimalBreed(name:'비글',nameKor:'비글').save(failOnError:true)
		new AnimalBreed(name:'셰클랜드 십독',nameKor:'셰클랜드 십독').save(failOnError:true)
		new AnimalBreed(name:'시추',nameKor:'시추').save(failOnError:true)
		new AnimalBreed(name:'슈나우져',nameKor:'슈나우져').save(failOnError:true)
		new AnimalBreed(name:'아메리칸 코커 스파니엘',nameKor:'아메리칸 코커 스파니엘').save(failOnError:true)
		new AnimalBreed(name:'아프간 하운드',nameKor:'아프간 하운드').save(failOnError:true)
		new AnimalBreed(name:'와이어 폭스 테리어',nameKor:'와이어 폭스 테리어').save(failOnError:true)
		new AnimalBreed(name:'요크셔테리어',nameKor:'요크셔테리어').save(failOnError:true)
		new AnimalBreed(name:'이탈리안 그레이 하운드',nameKor:'이탈리안 그레이 하운드').save(failOnError:true)
		new AnimalBreed(name:'잉글리시 코커 스파니엘',nameKor:'잉글리시 코커 스파니엘').save(failOnError:true)
		new AnimalBreed(name:'웰시 코기 펨브로크',nameKor:'웰시 코기 펨브로크').save(failOnError:true)
		new AnimalBreed(name:'진돗개',nameKor:'진돗개').save(failOnError:true)
		new AnimalBreed(name:'치와와(롱코트)',nameKor:'치와와(롱코트)').save(failOnError:true)
		new AnimalBreed(name:'토이푸들',nameKor:'토이푸들').save(failOnError:true)
		new AnimalBreed(name:'파피용',nameKor:'파피용').save(failOnError:true)
		new AnimalBreed(name:'퍼그',nameKor:'퍼그').save(failOnError:true)
		def ab2 = new AnimalBreed(name:'포메라니안',nameKor:'포메라니안').save(failOnError:true)
		new AnimalBreed(name:'프렌치 불독',nameKor:'프렌치 불독').save(failOnError:true)
		
		
		10.times{
			new Animal(shelter:s1, name:'말라뮤트', user : admin, type : at1, status : as1, breed:AnimalBreed.list()[it], gender:'Male', age:3, ageType:'Year', furColor:'실버그레이',feature:'꼬리에 까만 무늬 있음', weight:'1kg').save(failOnError:true)
		}
		def animal1 = new Animal(name:'doggi', user : admin, type : at1, status : as1, breed:ab1, gender:'Female', age:1, ageType:'Year', furColor:'white',weight:'1kg').save(failOnError:true)
		def animal2 = new Animal(name:'cathy', user : admin, type : at2, status : as2, breed:ab2, gender:'Female', age:11, ageType:'Month', furColor:'black',weight:'1kg').save(failOnError:true)
		
		new UserLikeAnimal(user: admin, animal: animal1).save(failOnError:true)
		new UserLikeAnimal(user: manager, animal: animal1).save(failOnError:true)
		
		new Shelter(name:'남양주 보호소', address:'남양주', user:admin).save(failOnError:true)
	}
    def destroy = {
    }
}
