function selectTag(showContent,selfObj){
	// 操作标签
	var tag = document.getElementById("tags").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "currency";
	}
	selfObj.parentNode.className = "selectTag currency";
	// 操作内容
	for(i=0; j=document.getElementById("tagContent"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
	
	
}

function selectTagp(showContent,selfObj,flag){
	// 操作标签
	var tag = document.getElementById("tagsp").getElementsByTagName("li");
	var taglength = tag.length;
	console.log(taglength);
	console.log(selfObj);
	for(i=0; i<taglength; i++){
		if(flag == 3)
			tag[i].className="currency";
		else
			tag[i].className="";
	}
	if(flag == 3)
		selfObj.parentNode.className = "selectTag currency";
	else
       selfObj.parentNode.className = "selectTag";
	// 操作内容
	for(i=3; j=document.getElementById("tagContent"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
	
	
}