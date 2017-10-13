new Vue({
    el:'#app',
    data:{
        active:false,
        numClicks:0,
        secs:10,
        colors:['#9bcd77','#d777b0','#fed401','#ff2c3c', '#66c652'],
        background:['#9C27B0','#E91E63','#F44336','#3F51B5', '#2196F3','#009688','#323133']
    },

    ready:function(){
        var self = this;
        setInterval(function(){
            if(self.active){
                self.secs--;
                if(self.secs == 0){
                    self.active = false;
                    $("button").addClass("over");
                    $("#status").html("<h2>Game Over :( </h2>");

                }
            }
        },1000);
    },




    methods:{
        updateCount:function(){
            this.numClicks ++;
            if(this.active == false){
                this.secs = 10;
                this.numClicks = 0;
                this.active = true;
            }

            if(this.numClicks % 10 == 0){
                $("button").animate({width : '-=15px' , height : '-=15px' } ,
            500, 'easeOutElastic', function(){} )
            }

            var color = this.colors[Math.round(Math.random()* (this.colors.length -1) ) ];
            var background = this.background[Math.round(Math.random()*(this.background.length-1))];
            $("button").css({backgroundColor:color});
            $("body").css({backgroundColor:background});
        }
    }
})