<html>
<head>
<title>right mouse clicked!</title>
</head>

<body>
     <div style="width:100%;height:100%" oncontextmenu="rightclicked(event)" onclick="leftclicked()"></div>
</body>

<script type="text/javascript">
var menu = document.createElement("table");
var tr1 = document.createElement("tr");
var td1 = document.createElement("td");
var text = document.createTextNode("delete");
td1.appendChild(text);
tr1.appendChild(td1);
menu.appendChild(tr1);
var tr2 = document.createElement("tr");
var td2 = document.createElement("td");
var text2 = document.createTextNode("create");
td2.appendChild(text2);
tr2.appendChild(td2);
menu.appendChild(tr2);
var tr3 = document.createElement("tr");
var td3 = document.createElement("td");
var text3 = document.createTextNode("copy");
td3.appendChild(text3);
tr3.appendChild(td3);
menu.appendChild(tr3);
var tr4 = document.createElement("tr");
var td4 = document.createElement("td");
var text4 = document.createTextNode("plaster");
td4.appendChild(text4);
tr4.appendChild(td4);
menu.appendChild(tr4);
menu.border="1";
menu.cellspacing="0";
menu.style="border-collapse:collapse;";
menu.style.position='absolute';
td1.onmouseover=mouseover;
td1.onmouseleave=mouseout;
td2.onmouseover=mouseover;
td2.onmouseleave=mouseout;
td3.onmouseover=mouseover;
td3.onmouseleave=mouseout;
td4.onmouseover=mouseover;
td4.onmouseleave=mouseout;
function rightclicked(e){
     e.preventDefault();
     document.body.appendChild(menu);
     var X = e.clientX;
     var Y = e.clientY;
     menu.style.top=Y;
     menu.style.left=X;
}

function leftclicked(){
     document.body.removeChild(menu);
}

function mouseover(){
     this.style.background="url('http://img0.imgtn.bdimg.com/it/u=2964447384,3118607008&fm=21&gp=0.jpg')";
}

function mouseout(){
     this.style.background="";
}
</script>
