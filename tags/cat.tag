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
asdfa
<food-water></food-water>
<play></play>
<hygine></hygine>
<health></health>


<button onclick = {happyScore + 10}>Feed</button>
<button onclick = {happyScore + 5}>Play</button>
<button onclick = {happyScore + 5}>Clean Up Litter Box</button>
<button onclick = {happyScore + 5}>Take a shower</button>
<button onclick = {happyScore + 2}>Go to hospital</button>

  <script>


  this.happyScore = 0;

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
