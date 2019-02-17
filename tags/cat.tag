<cat>
<!-- CAT HAPPINESS LEVEL -->
<div if= { happyScore>80 || happyScore==80 }>
  <p>happy<p>
</div>

<div if={ happyScore<80 && happyScore>60 }>
<p>neutral<p>
</div>

<div if = { happyScore<60 || happyScore== 60}>
<p>sad<p>
</div>

<!-- interactive activity -->
<food-water if = {time<10}></food-water>
<play if= {time>10 && time<20 || time == 10}></play>
<hygine if = {time>20 && time<30 || time == 20}></hygine>
<health if = {time>30 && time<40 || time == 30}></health>
<p>Seconds Elapsed: { time }</p>

<button onclick = { feed }>Feed</button>
<button onclick = { play }>Play</button>
<button onclick = { cleanUp }>Clean Up Litter Box</button>
<button onclick = { shower }>Take a shower</button>
<button onclick = { hospital }>Go to hospital</button>

  <script>

// Button adding score
  this.happyScore = 60;

  this.feed = function(){
    this.happyScore+=10;
  }

  this.play = function(){
    this.happyScore+=5;
  }

  this.cleanUp = function(){
    this.happyScore+=5;
  }

  this.shower = function(){
    this.happyScore+=5;
  }

  this.hospital = function(){
    this.happyScore+=3;
  }


// Timer

  this.time = opts.start || 0

  tick() {
    this.update({ time: ++this.time })
  }

  var timer = setInterval(this.tick, 1000)

  this.on('unmount', function() {
    clearInterval(timer)
  })

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
