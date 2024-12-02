# be11-1st-GOTOHELL-HRCore

<div align="center">
<img width="1280" alt="스크린샷 2024-06-02 오후 4 32 52" src="https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/87ef7c0f-c871-4ede-85c7-9364c0fd3ab5">
</div>

  

# ✨ 팀

<figure>
    <table>
      <tr>
        <td align="center"><img src="https://avatars.githubusercontent.com/u/95538973?v=4" width="180px"/></td>
        <td align="center"><img src="https://avatars.githubusercontent.com/u/185882822?v=4" width="180px"/></td>
        <td align="center"><img src="https://avatars.githubusercontent.com/u/93423242?v=4" width="180px"/></td>
	<td align="center"><img src="https://avatars.githubusercontent.com/u/186559215?v=4" width="180px"/></td>
      </tr>
      <tr>
        <td align="center">팀장: <a href="https://github.com/JungJunHwan">정준환</a></td>
        <td align="center">팀원: <a href="https://github.com/SWEETP0T4T0">이태희</a></td>
        <td align="center">팀원: <a href="https://github.com/2ma1995" >소병윤</a></td>
	<td align="center">팀원: <a href="https://github.com/01youngil" >최영일</a></td>
      </tr>
    </table>
</figure>
<br>


---
    
# ✨프로젝트 배경

많은 중소기업에서 인사관리는 수작업 또는 엑셀과 같은 간단한 도구로 이루어지는 경우가 많습니다.

이로 인해 다음과 같은 문제점들이 발생합니다.

	- 직원 정보, 근태, 급여 관리가 체계적으로 이루어지지 않아 데이터가 분산되거나 누락
	- 근태 기록, 성과 평가, 교육 내역 등의 데이터가 통합되지 않아 효율적인 의사결정어려움
	- 부서별 현황이나 프로젝트별 자원 관리에 대한 데이터 부족으로 생산성 저하 발생

이러한 중소기업의 인사관리 문제를 해결하기 위해 체계적이고 통합된 **인사관리 시스템(HR Management System)**을 기획했습니다.

본 프로젝트는 중소기업이 손쉽게 사용할 수 있도록 간편하고 효율적인 솔루션을 제공하는 데 중점을 두고 있습니다.


---

# ✨프로젝트 개요




---
# ✨ 프로젝트 중점 사항

- 목적
	- 중소기업 인사관리 업무를 효율화하고 데이터 신뢰성을 확보하여 생산성과 직원 만족도를 높이는 것을 목표로 한다.

- 주요 목표

	- 데이터 통합 관리
 		- 직원 정보(프로필, 근태, 급여, 자격증 등)를 한 곳에서 체계적으로 관리할 수 있는 시스템 구축.

	- 업무 자동화
		- 근태 기록, 급여 계산, 인사 평가, 교육 내역 등 반복적인 업무를 자동화하여 관리 효율성을 증대.

	- 통계 및 인사이트 제공
 		- 근태, 급여, 보너스, 성과 데이터를 분석해 부서별/직원별 요약 리포트를 제공.

- 기대 효과 
	- 인사관리 업무 효율성 30% 이상 향상.
	- 급여 및 근태 관리의 신뢰성 확보로 인한 직원 만족도 상승.
	- 관리자가 데이터 분석 및 의사결정에 투자할 수 있는 시간 확보.


---
# 📄 WBS

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/13d9cc44-a333-4c04-a601-53c6146c2c6b)

---
# 📄 요구사항 정의서

[요구사항 정의서 노션에서 보기](https://www.notion.so/14d7189b756480c8b8f0f0c3e39bc7a9?v=14d7189b7564818da3ea000c581f550f)

<div>
<img width="638" alt="스크린샷 2024-06-02 오후 4 22 25" src="https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/e5b58297-6274-4f90-a507-31ed1f6e31f4">
<img width="642" alt="스크린샷 2024-06-02 오후 4 22 54" src="https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/d1af80ec-2473-4df1-9c5d-16dc5e0c5e87">
</div>


---
# 📄 ERD

 [ERD 클라우드에서 보기](https://www.erdcloud.com/d/DPiPTZryaNWEzfLcM)
 
![music-streaming-erd](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/a72d3657-f8e8-47fb-aa14-17f096ff3152)


---
# 📑 Schema
Moosic은 총 15개의 테이블로 구성되어 있습니다.
  
자세한 내용은 [여기](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/blob/main/schema/team1_moosic_schema.sql)에서 보실 수 있습니다.
  
### 1. 음원
```sql
CREATE TABLE `music` (
`music_id`	bigint PRIMARY KEY AUTO_INCREMENT,
`music_title`	varchar(255) NOT NULL,
`lyrics`	varchar(10000),
`music_file_url`	varchar(2083) NOT NULL,
`playtime`	int unsigned NOT NULL,
`like_count`	bigint	NOT NULL	DEFAULT 0,
`del_yn`	tinyint(1)	NOT NULL	DEFAULT 0,
`album_id`	bigint	NOT NULL,
`genre`    enum('k-pop', 'pop', 'j-pop', 'dance', 'ballad', 'hip-hop', 'trot')    NOT NULL,
FOREIGN KEY music(album_id) REFERENCES album(album_id) ON DELETE CASCADE ON UPDATE CASCADE
);
```

  
### 2. 앨범


  
### 3. 플레이리스트


  
### 4. 플레이리스트 세부 내역


  
### 5. 음원 재생 이력


  
### 6. 좋아요


  
### 7. 싫어요


  
### 8. 관리자


  
### 9. 배급사


### 10. 회원



  
### 11. 아티스트


  
### 12. 결제 수단


  
### 13. 결제 이력

  

### 14. 음원에 참여한 아티스트


### 15. 인기 차트


---

# ✨ 프로젝트 시나리오


  
---

# ✨ 프로시저 실행 결과


<details>
<summary><b>1. 회원 가입</b></summary>
<div markdown="1">
	
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/4f67d59f-3674-4f59-9306-6bdd5203336e)

```sql
CALL team1_moosic.멤버넣기('김세리', 'seir@naver.com', '1234', '010-1221-2132', '00-01-01', 'Female', null, null);
```
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/fd60ccc0-cb53-4dd7-bfe2-f93a0463ea10)
</div>
</details>


<details>
<summary><b>2. 로그인</b></summary>
<div markdown="1">

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/b9ff8279-c305-40e6-bb50-3add5aa3173a)

```sql
call team1_moosic.멤버로그인('seir@naver.com', '1234');
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/773d7496-b877-4e98-9a65-c9b9749ebcaf)
</div>
</details>


<details>
<summary><b>3. 음원 검색</b></summary>
<div markdown="1">
음원 데이터:

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/68c2c915-2abd-43d1-b16b-67e24c2111fd)

```sql
call team1_moosic.음원검색('Song of Freedom');
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/9addabea-b1f9-4eee-8741-dc69fea1429f)

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/311f5565-c28c-4bfa-87de-e55ae2b4b60c)
</div>
</details>

<details>
<summary><b>4. 결제 정보 등록</b></summary>
<div markdown="1">

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/37ccf13d-d301-4f23-9bf1-152eaafa9089)

```sql
call team1_moosic.결제정보등록('seir@naver.com', '1234', '국민은행', '942222--00-333444');
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/3fd6adc8-491e-462d-990a-143cde1c23ec)

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/927ef383-752e-4276-a2b8-5ee9e4f2da48)

</div>
</details>


<details>
<summary><b>5. 구독하기</b></summary>
<div markdown="1">

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/f3aecaf4-c73a-410c-9cb5-37e7e94312e9)

```sql
call team1_moosic.구독('seir@naver.com', '1234');
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/4780a066-e1b6-4f71-ae6f-7f15194250d4)
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/fbb6c5a9-1fc4-45ab-a36a-8641abc153eb)
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/19f7fb68-d235-4a74-9b31-ed663221f2eb)

</div>
</details>

<details>
<summary><b>6. 플레이리스트 만들기</b></summary>
<div markdown="1">
	
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/e18357d2-37a5-4aa1-9e41-e188db91c6a0)

```sql
call team1_moosic.플레이리스트만들기(1, '내가 좋아하는 노래', null);
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/771b28bd-89e9-4620-a968-4fa74900eea3)
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/b99c682f-6f1d-4e5e-82b4-2c314ec35119)


</div>
</details>


<details>
<summary><b>7. 플레이리스트에 음원 추가하기</b></summary>
<div markdown="1">
	
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/e0b4ad65-5dde-4997-bcb9-5722a80148a3)

```sql
call team1_moosic.플레이리스트에음원추가하기(1, 81);
call team1_moosic.플레이리스트에음원추가하기(1, 82);
call team1_moosic.플레이리스트에음원추가하기(1, 83);
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/44c0b1a9-6de9-4399-80f0-f6a9c0dfdc6a)
</div>
</details>


<details>
<summary><b>8.플레이리스트에 들어있는 음원 조회하기</b></summary>
<div markdown="1">
	
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/c8f70c4e-b748-40f1-9d54-ecad99b1d683)

```sql
call team1_moosic.플레이리스트조회하기(1);
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/6a8b5a05-812f-4df0-898f-767f78b05445)

```sql
select playtime as 재생수, like_count as "좋아요 수" from music where music_id = 81;
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/71e749ff-ef7a-481c-9019-5ce5ea4aa5ed)

</div>
</details>


<details>
<summary><b>9. 듣고 있는 곡의 아티스트 조회하기</b></summary>
<div markdown="1">
	
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/c955518a-fc63-4e50-ad79-98a19e6b32c1)
	
```sql
call team1_moosic.select_artist(81);
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/ff8bbabe-a801-4855-a07b-2f76c30ffa51)
</div>
</details>


<details>
<summary><b>10. 구독 취소하고 환불 받기</b></summary>
<div markdown="1">
	
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/2651fac5-68e9-4732-ae3e-e51384a45d85)
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/080e1921-4f7e-4bcb-9a49-2ebe1d4725da)
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/2edb1cb6-b760-4143-8389-21b88f37a143)

</div>
</details>



<details>
<summary><b>11. 회원 탈퇴</b></summary>
<div markdown="1">
	
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/79439edd-279e-4c3e-be41-ca48779a39c2)

```sql
call team1_moosic.회원탈퇴('seir@naver.com', '1234');
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/3c3430e1-9da6-4647-bfd1-337d96c0a99f)

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/a814f016-a10f-49a2-9615-06280f9174b2)

</div>
</details>


<details>
<summary><b>12. 배급사 회원 가입</b></summary>
<div markdown="1">
	
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/593e72af-f184-44c6-8840-83f3224ccbe6)

```sql
call team1_moosic.배급사등록('김세리', 'serimusic@naver.com', '1234', '02-1234-1234');
```

</div>
</details>


<details>
<summary><b>13. 관리자 회원 가입</b></summary>
<div markdown="1">
	
```sql
call team1_moosic.배급사등록('김세리', 'serimusic@naver.com', '1234', '02-1234-1234');
call team1_moosic.관리자 넣기('최세호', 'seho@moosic.com', '1234', '010-1234-4443');
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/91be5148-97c5-4dbe-8a83-75f7ae19d6a7)


관리자가 배급사 "김세리" 씨의 회원가입 요청을 수락
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/178f3ef8-651d-45e6-ba26-4d430503d7f7)

</div>
</details>


<details>
<summary><b>14. 관리자가 회원들의 구독 현황, 횟수를 조회</b></summary>
<div markdown="1">

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/e6a1a0ae-fa7e-46cb-8515-17036673ad94)

```sql
call team1_moosic.유저구독내역('seho@moosic.com', '1234');
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/ef5e60ea-16bc-48d0-9bd8-9ff487e9ea51)

</div>
</details>

<details>
<summary><b>15. 배급사 로그인</b></summary>
<div markdown="1">
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/7b551a38-67bc-4116-a92e-c85f09a2a68f)

```sql
call team1_moosic.배급사로그인('serimusic@naver.com', '1234');
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/055d7a4f-88f6-4476-941c-1d2b7edf8180)

</div>
</details>


<details>
<summary><b>16. 인기 차트 조회</b></summary>
<div markdown="1">

 전체 장르(total)에서 탑 10 조회
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/f680ecca-4daf-43b1-968a-b2a592198b69)

```sql
call team1_moosic.select_popular_chart('total');
```

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/8d96f4dc-d024-44c1-9fb7-5e9d3a501d94)

</div>
</details>

<details>
<summary><b>17. 앨범 등록</b></summary>
<div markdown="1">
	
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/5a92c466-6142-47b8-80cd-ca46eaf1a5cd)

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/084e4a26-7732-4d9a-bf1c-7a103f8f6292)


</div>
</details>


<details>
<summary><b>18. 음원 등록</b></summary>
<div markdown="1">

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/9ccd2e76-2528-4493-936c-4282ba82b74b)

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/24582eb1-247c-4023-9cea-7f444dcfc504)


세리 1집 조회
![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/ec65c5e6-655b-41d4-8f08-eedadf199ae4)


</div>
</details>

---
# ✨ 설계에 대한 고민
- **좋아요, 싫어요 테이블을 만들 때, fk 2개를 복합키로 쓸지, 별도의 인조 pk를 둘지에 대한 고민**
    - 좋아요, 싫어요에 대한 정보는 보통 어떤 유저가 좋아요 누른 노래가 뭔지, 어떤 노래에 좋아요 누른 개수 등을 조회할 때 사용되고, 별도의 pk로 조회해야하는 경우는 존재하지 않습니다.
    - user_id와 music_id의 조합이 고유성을 보장하며, 복합키 설정시 복합 인덱스가 자동으로 생성되어 추가 인덱스를 생성할 필요 없이 효율적인 검색 성능을 제공합니다. 관리가 간단하고, 삽입 성능의 차이(오버헤드)도 고유한 인덱스를 사용하는 것에 비해 크지 않습니다.
    - 따라서 인조 pk를 두는 것보다는 fk 2개를 복합키로 쓰는 것이 더 적절하다고 판단하였습니다.
- **음원에 참여한 아티스트를 표시하는 방법에 대한 고민**
    - 음원에 참여한 아티스트를 표기하는 것이 저희 서비스의 대표적인 N:M 관계였습니다.
    - 그리고 아티스트도 ‘메인 아티스트’, ‘작곡가’, ‘작사가’, ‘편곡자’, ‘실연자’로 여러 분류로 나뉘어져 있어서 이 관계를 잘 표현하는 것이 중요했습니다.
    - 저희는 음원과 아티스트 사이에 ‘음원에 참여한 아티스트’ 테이블을 두고, 그곳에 음원 아이디, 아티스트 아이디, 아티스트 분류 컬럼을 두어 여러 아티스트와 여러 음원 사이의 관계를 표현할 수 있었습니다.


