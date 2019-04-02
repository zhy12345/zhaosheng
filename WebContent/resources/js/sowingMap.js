function my$(id){
       return document.getElementById(id);
  };
  //获取最外边的div
  var box=my$("box");
  //获取相框
  var screen=box.children[0];
  //获取相框的宽度
  var imgWidth=screen.offsetWidth;
  //获取ul
  var ulObj=screen.children[0];
  //获取ul中的li
  var list=ulObj.children;
  //获取ol
  var olObj=screen.children[1];
  //焦点的div
  var arr=my$("arr");

  var pic=0;//全局变量
  //创建小按钮---根据ul中li的个数
  for(var i=0;i<list.length;i++){
    //创建li标签，加入ol中
    var liObj=document.createElement("li");
    //在每个ol中的li标签上添加一个自定义属性，存储索引值
    liObj.setAttribute("index", i);
    olObj.appendChild(liObj);
    liObj.innerHTML=(i+1);
    //注册鼠标进入事件
    liObj.onmouseover=function(){
      //先干掉所有的ol中li的背景颜色
      for(var j=0;j<olObj.children.length;j++){
        olObj.children[j].removeAttribute("class");
      }
      //设置当前鼠标进入时的li的背景颜色
      this.className="current";
      //获取鼠标进入的li的当前的索引值
       pic=this.getAttribute("index");
      //移动ul
      animate(ulObj,-pic*imgWidth);
    };
  }
  //设置ol中第一个li有背景颜色
  olObj.children[0].className="current";
  //克隆一个ul中的第一个li,加入到ul的最后----克隆
  ulObj.appendChild(ulObj.children[0].cloneNode(true));//true保留原有属性
  //自动播放
  var timeId=setInterval(clickHandle, 10000);
  //鼠标进入到box中的div显示左右焦点的div
  box.onmouseover=function(){
    arr.style.display="block";
    //鼠标进入，废掉之前的定时器
    clearInterval(timeId);
  }
  box.onmouseout=function(){
    arr.style.display="none";
    //鼠标离开，自动播放s
    timeId=setInterval(clickHandle,10000);
  }
  //右边按钮
  my$("right").onclick=clickHandle;
  function clickHandle(){
    if(pic==list.length-1){
      //判断是不是最后一张图片,
      pic=0;
      ulObj.style.left=0+"px";
    }
    pic++;
    animate(ulObj,-pic*imgWidth);
    //如果pic==5，显示的是第6个图（内容是第一张图片），第一个小按钮有颜色
    if(pic==list.length-1){
      //第五个按钮的颜色干掉
      olObj.children[olObj.children.length-1].className="";
      //第一个按钮的颜色设置上
      olObj.children[0].className="current";
    }
    else{
      //干掉所有小按钮的背景颜色
      for(var i=0;i<olObj.children.length;i++){
        olObj.children[i].removeAttribute("class");
      }
      olObj.children[pic].className="current";
    }
  };
  //左边按钮
  my$("left").onclick=function(){
    if(pic==0){
      pic=olObj.children.length;
      ulObj.style.left=-pic*imgWidth+"px";
    }
    pic--;
    animate(ulObj,-pic*imgWidth);
    //设置小按钮的颜色
    for(var i=0;i<olObj.children.length;i++){
      //所有的小按钮干掉颜色
      olObj.children[i].removeAttribute("class");
    }
    //当前的pic索引设置颜色
    olObj.children[pic].className="current";
  };


  //设置任意的一个元素移动到指定的目标位置
  function animate(element,target){
      //先清理定时器
      clearInterval(element.timeId);
       element.timeId=setInterval(function(){
      //获取div的当前位置
       var current = element.offsetLeft;//数字类型，没有px
      //div每次移动多少像素--步数
        var step=9;
        step=current<target?step:-step;
      //每次移动后的距离
        current+=step;
       //设置div的目标位置
       if(Math.abs(target-current)>Math.abs(step)){
            element.style.left=current+"px";
       }
       else{
         //清理定时器
           clearInterval(element.timeId);
           element.style.left=target+"px";
       }
  }, 10);
  }