/*----------------------------------------*/
/*필터 및 테이블 관련 기능을 제공하는 자바스크립트*/
 /*---------------------------------------*/
	
	// 범위검색과 키워드 검색 추가를 위해 키값을 저장하는 배열 객체
	var rangekeys = [];
	var keywordkeys = [];
	
	for(let k in rangeObj){
		rangekeys.push(k);
	}
	
	for(let k in keywordObj){
		keywordkeys.push(k);
	}
	
	var rangeArrNum = rangekeys.length;
	var keywordArrNum = keywordkeys.length;
	

	var rangeCntArr = [];
	for(let i = rangeArrNum; i > 0; i--){
		rangeCntArr.push(i);
	}
	
	var keywordCntArr = [];
	for(let i = keywordArrNum; i > 0; i--){
		keywordCntArr.push(i);
	}
	
	// 선택된 키워드포맷을 임시 저장을위한 배열객체
	var selectedKeywordFormat = [];
	
	
	//
	var plusMinusBtnSetting = function(className, arrs){
		// 현재 button div 갯수
		var rangeBtns = searchForm.getElementsByClassName(className);
		
		for(let btns of rangeBtns){
			$(btns.children[0]).css("display", "inline");
			$(btns.children[1]).css("display", "inline");
		}
		
		//플러스를 지움
		if(rangeBtns.length == arrs){
			for(let btns of rangeBtns){
				$(btns.children[0]).css("display", "none")
			}
		}
		
		//마이너스를 지움
		if(rangeBtns.length == 1){
			for(let btns of rangeBtns){
				$(btns.children[1]).css("display", "none")
			}
		}
	}
	
	
	// 범위검색 상자를 더하는 함수
	var plusRangeDiv = function(){
		var cnt = rangeCntArr.pop();
		
		if(cnt == undefined) return;
		
		var yearOpHtml = "";
		var monthOpHtml = "";
		var dayOpHtml = "";
		
		//년(2020~1940) 월(1~12) 일(1~31) 세팅
		for(let i = 1; i <= 31; i++){
			dayOpHtml += "<option value='"+i+"'>"+i+"일</option>"
		}
		
		for(let i = 1; i <= 12; i++){
			monthOpHtml += "<option value='"+i+"'>"+i+"월</option>"
		}
		
		for(let i = 2020; i >= 1940; i--){
			yearOpHtml += "<option value='"+i+"'>"+i+"년</option>"
		}
		
		var div = document.createElement("div");
		div.classList = "row fieldContent";
		div.id = "rangeBox" + cnt;
		
		// contents 주입
		// set name 1 : rangeFormat1 - rangeStartYear1 - rangeStartMonth1 - rangeStartDay1 - rangeEndYear1 - rangeEndMonth1 - rangeEndDay1
		// set name 2 : rangeFormat2 - rangeStartYear2 - rangeStartMonth2 - rangeStartDay2 - rangeEndYear2 - rangeEndMonth2 - rangeEndDay2
		// set name 3 : rangeFormat3 - rangeStartYear3 - rangeStartMonth3 - rangeStartDay3 - rangeEndYear3 - rangeEndMonth3 - rangeEndDay3
		html = "<div class='col-2'><select class='custom-select mr-sm-2 format' name='rangeFormat"+cnt+"'>";
		
		// format option setting
		for(let i = 0; i < rangekeys.length; i++){
			let key = rangekeys[i];
			
			html += "<option value='";
			html += key + "'";
			if(i == 0) html +=" selected";
			html += ">";
			html += rangeObj[key];
			html += "</option>";
		}
		
		html +=	"</select></div><div class='col-5'><select class='custom-select mr-sm-2' name='rangeStartYear"+cnt+"'><option value=''>년</option>"+yearOpHtml+"</select><select class='custom-select mr-sm-2' name='rangeStartMonth"+cnt+"'><option value=''>월</option>"+monthOpHtml+"</select><select class='custom-select mr-sm-2' name='rangeStartDay"+cnt+"'><option value=''>일</option>"+dayOpHtml+"</select><span class='center-span'>~</span><select class='custom-select mr-sm-2' name='rangeEndYear"+cnt+"'><option value=''>년</option>"+yearOpHtml+"</select><select class='custom-select mr-sm-2' name='rangeEndMonth"+cnt+"'><option value=''>월</option>"+monthOpHtml+"</select><select class='custom-select mr-sm-2' id='rangeEndDay"+cnt+"'><option value=''>일</option>"+dayOpHtml+"</select></div><div class='col-3'><button type='button' class='btn' onclick='selectPrevious(\"rangeBox"+cnt+"\", 1);'>1개월전</button><button type='button' class='btn' onclick='selectPrevious(\"rangeBox"+cnt+"\", 3);'>3개월전</button><button type='button' class='btn' onclick='selectPrevious(\"rangeBox"+cnt+"\", 6);'>6개월전</button></div><div class='col-2 rangeBtns'><button type='button' class='btn' onclick='plusRangeDiv();'>+</button><button type='button' class='btn' onclick='minusRangeDiv(this)'>-</button></div>";
		
		div.innerHTML = html;
		
		searchForm.getElementsByClassName("dateField")[0].append(div);
		
		plusMinusBtnSetting("rangeBtns", rangekeys.length);
	}
	
	var minusRangeDiv = function(t){
		if(rangeCntArr.length < rangeArrNum-1){
			var target = $(t).parent().parent();
			var id = target.attr("id");
			target.remove();
			rangeCntArr.push(id.substr(id.length-1));
			
			plusMinusBtnSetting("rangeBtns", rangekeys.length);
		}
	}
	
	// 선택한 데이트 박스의 내용을 "현재월-선택한월 ~ 현재월"로 세팅하는 기능을 제공하는 함수
	var selectPrevious = function(boxId, month){
		console.log(boxId);
		// date setting, 현재 기반으로 세팅
		var end = new Date();
		
		var start = new Date();
		start.setMonth(end.getMonth()-month);
		
		var target = [];
		
		target.push(start.getYear()+1900);
		target.push(start.getMonth()+1);
		target.push(start.getDate());
		
		target.push(end.getYear()+1900);
		target.push(end.getMonth()+1);
		target.push(end.getDate());
		
		// DHTML
		var box = document.getElementById(boxId);
		var num = boxId.substr(boxId.length-1);
		
		var selects = box.getElementsByTagName("select");
		
		var options = "";
		
		// select option setting
		for(let i = 0; i<selects.length-1; i++){
			
			var options = selects[i+1].options;
			
			for(let j=0; j<options.length; j++) {
			    if(options[j].selected == true) {
			        options[j].selected == false;
			        break;
			    }
			}
			
			for(let j=0; j<options.length; j++) {
			    if(options[j].value == target[i]) {
			        options[j].selected = "true";
			        break;
			    }
			}
		}
	}
	
	//키워드 div를 생성하는 함수
	var plusKeywordDiv = function(){
		var cnt = keywordCntArr.pop();
		
		if(cnt == undefined) return;
		
		var div = document.createElement("div");
		div.classList = "row fieldContent";
		div.id = "keywordBox" + cnt;
		
		// contents 주입
		// set name 1 : keywordFormat1 - keyword1 
		// set name 2 : keywordFormat2 - keyword2 
		// set name 3 : keywordFormat3 - keyword3 
		html = "<div class='col-2'><select class='custom-select mr-sm-2 format' name='keyword"+cnt+"' >";
		
		// format option setting
		for(let i = 0; i < keywordkeys.length; i++){
			let key = keywordkeys[i];
			
			html += "<option value='";
			html += key + "'";
			if(i == 0) html +=" selected";
			html += ">"
			html += keywordObj[key];
			html += "</option>";
		}
		
		html += "</select></div><div class='col-8'><input type='text' class='form-control' name='keyword"+cnt+"' placeholder='검색어를 입력하세요.' /></div><div class='col-2 keywordBtns'><button type='button' class='btn' onclick='plusKeywordDiv();'>+</button><button type='button' class='btn' onclick='minusKeywordDiv(this)'>-</button></div>";
		div.innerHTML = html;
		
		searchForm.getElementsByClassName("keywordField")[0].append(div);
		
		plusMinusBtnSetting("keywordBtns", keywordkeys.length);
	}
	
	var minusKeywordDiv = function(t){
		if(keywordCntArr.length < keywordArrNum-1){
			var target = $(t).parent().parent();
			var id = target.attr("id");
			target.remove();
			keywordCntArr.push(id.substr(id.length-1));
			
			plusMinusBtnSetting("keywordBtns", keywordkeys.length);
		}
	}
	
	var setKeywordFormat = function(){
		//format 클래스가 들어가 셀렉트를 선택
		var selects = document.getElementsByClassName("keywordField")[0].getElementsByClassName("format");
		// select option setting
		for(let i = 0; i<selects.length; i++){
			var options = selects[i].options;
			console.log(options);
			
			for(key in selectedKeywordFormat){
				//각 select의 option 확인하여 disable
				for(let j = 0; j<options.length; j++){
					console.log("value : "+options[j].value);
					console.log("key : "+key);
					if(options[j].value == key){
						$(options[j]).prop("disabled",true);
						console.log(option)
					}
				}
			}
		}
	}
	
	// 체크박스/ 라디오를 눌렀을때 선택 기능제공
	var checkFunction = function(t){
		var input = $(t).parent().children()[0];
		if(input.checked == true){
			input.checked = false
		}else{
			input.checked = true
		}
	}
	
	// "모든" 버튼을 눌렀을때 다른 모든 버튼이 선택되는 기능을 제공
	var allCheck = function(t){
		var input = $(t).parent().children()[0];
		var $divs = $(t).parent().parent().children();
		if(input.checked == true){
			$divs.each(function(i, e){
					$(e).children()[0].checked = true;
			});
		}else{
			$divs.each(function(i, e){
				$(e).children()[0].checked = false;
			});
		}
	}
	
	// "모든" 버튼을 제외한 다른 버튼을 눌렀을때 다른 버튼이 선택되었는지 확인하고 "모든" 버튼을 조정하는 기능을 제공
	var checkAllBtn = function(t){
		var checkCnt = 0;
		var $divs = $(t).parent().parent().children();
		var target = "";
		$divs.each(function(i, e){
			if(i != 0){
				if($(e).children()[0].checked == true){
					checkCnt += 1;
				}
			}else{
				target = $(e).children()[0];
			}
		})
		if(checkCnt == $divs.length-1){
			target.checked = true;		
		}else{
			target.checked = false;
		}
	}
	
// 회원 상제정보 컴포넌트를 컨트롤하는 스크립트
	var openMemberDetailComponent = function(no){
		var result = setMemberDetailComponent(no);
		
		$("#memberDetailComponent").css("display", "block");
	}
	
	// ajax를 이용하여 컴포넌트의 생성 객체를 전달
	var setMemberDetailComponent = function(){
		
	}
	
	var closeMemberDetailComponent = function(){
		$("#memberDetailComponent").css("display", "none");
	}
	
// 회원 상제정보 컴포넌트를 컨트롤하는 스크립트
	var openHostingDetailComponent = function(no){
		var result = setHostingDetailComponent(no);
		
		$("#hostingDetailComponent").css("display", "block");
	}
	
	// ajax를 이용하여 컴포넌트의 생성 객체를 전달
	var setHostingDetailComponent = function(){
		
	}
	
	var closeHostingDetailComponent = function(){
		$("#hostingDetailComponent").css("display", "none");
	}
	// 생성
	plusRangeDiv();
	plusKeywordDiv();
	
	
/* */
/* */
/* */
	
	