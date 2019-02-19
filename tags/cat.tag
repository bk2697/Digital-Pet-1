<cat>
<!-- CAT HAPPINESS LEVEL -->
<div if= { happyScore>80 || happyScore==80 }>
  <img src="./assets/happy-cat.jpg" alt = "happy cat" style="width:500px ; height:600px;">
</div>

<div if={ happyScore<80 && happyScore>60 }>
<img src="./assets/comfortable-cat.jpg" alt="comfortable cat" style="width:500px ; height:600px;">
</div>

<div if = { happyScore<60 && happyScore >40 || happyScore== 60}>
  <img src="./assets/angry-cat.jpg" alt="sad cat" style="width:600px ; height:600px;">
</div>

<div if = { happyScore<40 && happyScore > 20 || happyScore== 40}>
  <img src="./assets/sad-cat.jpg" alt="sad cat" style="width:600px ; height:600px;">
</div>

<div if = { happyScore<20 || happyScore== 20}>
  <img src="./assets/angel-cat.jpg" alt="sad cat" style="width:600px ; height:600px;">
</div>

<!-- ACTION CALLING -->
<food-water if = {time<10}></food-water>
<play if= {time>10 && time<20 || time == 10}></play>
<hygine if = {time>20 && time<30 || time == 20}></hygine>
<health if = {time>30 && time<40 || time == 30}></health>
<social if = {time>40 && time<60 || time == 40}></social>

<p>Seconds Elapsed: { time }</p>
<p>HappyScore: { happyScore }</p>

<!-- INTERACTIVE BUTTONS AND INPUTS -->
<button onclick = { feed }>Feed</button>
<button onclick = { play }>Play</button>
<button onclick = { hygine }>Clean Up Litter Box</button>
<button onclick = { hygine }>Take a shower</button>
<button onclick = { hospital }>Go to hospital</button>
<br>
<input type = "text" ref="myUserInput" placeholder="Say something sweet!" onchange = {setUserInput}>
<br>
<span>{userInput} {}</span>

<script>

// Button adding score
  this.happyScore = 100;

  this.feed = function(){
    if (this.time < 10){
        this.happyScore+=10;
    }
    else{
      this.happyScore-=2;
    }
    if (this.happyScore == 100 || this.happyScore > 100){
      this.happyScore = 100;
    }
  }

  this.play = function(){
    if (this.time>10 && this.time<20 || this.time == 10){
        this.happyScore+=5;
    }
    else{
      this.happyScore-=2;
    }
    if (this.happyScore == 100 || this.happyScore > 100){
      this.happyScore = 100;
    }
  }

  this.hygine = function(){
    if(this.time>20 && this.time<30 || this.time == 20){
      this.happyScore+=5;
    }
    else{
      this.happyScore-=2;
    }
    if (this.happyScore == 100 || this.happyScore > 100){
      this.happyScore = 100;
    }
  }

  this.hospital = function(){
    if(this.time>30 && this.time<40 || this.time == 30){
      this.happyScore+=3;
    }
    else{
      this.happyScore-=1;
    }

    if (this.happyScore == 100 || this.happyScore > 100){
      this.happyScore = 100;
    }
  }


// Timer

  this.time = opts.start || 0

  tick() {
    if (this.happyScore >  20){
      this.update({ time: ++this.time })
      this.update({happyScore: --this.happyScore})
    }
    if (this.time==60){
      this.time = 0;
    }
  }

  var timer = setInterval(this.tick, 1000)

  this.on('unmount', function() {
    clearInterval(timer)
  })

  //GET INPUT VALUE
  this.userInput = "";
  setUserInput(e){
    this.userInput = this.refs.myUserInput.value + " " +  "(score + 1)";
    this.happyScore+=1;
  }

// OTHERS
  console.log(this.happyScore);
    var tag = this;
    console.log('cat.tag');
  </script>

  <style>
    :scope {
      display: block;
    }
  </style>
</cat>
