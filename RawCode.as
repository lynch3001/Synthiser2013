//import area
import flash.events.Event;
import flash.media.Sound;
import flash.media.SoundChannel;
import flash.utils.Timer;
import flash.events.TimerEvent;

//omg! Variables!?
var pausePoint:Number = 0.00;
var my_songs:XMLList;
var my_total:Number;

var my_sound:Sound;
var my_channel:SoundChannel;

var current_song:Number = 0;

var song_position:Number;
var song_paused:Boolean;
var myXMLLoader:URLLoader = new URLLoader();
myXMLLoader.load(new URLRequest("playlist.xml"));
//Boolean to the left of me
var checkboxStatus:Boolean;


myXMLLoader.addEventListener(Event.COMPLETE, processXML);

function processXML (e:Event):void
{
	var myXML:XML = new XML(e.target.data);

	my_songs = myXML.SONG;
	my_total = my_songs.length();
	
	myXMLLoader.removeEventListener(Event.COMPLETE, processXML);
	myXMLLoader = null;
}

playButtonT1.addEventListener(MouseEvent.CLICK, onPlay1);

function onPlay1(e:MouseEvent):void {

		playSong(current_song);
}

function playSong(mySong:Number):void{
var myChannel = my_songs[mySong].@CHANNEL;
var myTrack = my_songs[mySong].@TRACK;
var myURL = my_songs[mySong].@URL;

 trace (my_songs[mySong].@CHANNEL);
if (my_channel) {
		my_channel.stop();
		my_channel.removeEventListener(Event.SOUND_COMPLETE, onNext);
	}

	my_sound = new Sound();
	my_sound.load(new URLRequest(myURL)); 
	my_channel = my_sound.play();
	my_channel.addEventListener(Event.SOUND_COMPLETE, onNext);

}

function onNext(e:Event):void {
	current_song++;
	if (current_song>=my_total) {
		current_song=0;
	}
	playSong(current_song);
}

//channel 1 booleans
var isPlayingc1t01:Boolean = false;
var isPlayingc1t02:Boolean = false;
var isPlayingc1t03:Boolean = false;
var isPlayingc1t04:Boolean = false;
var isPlayingc1t05:Boolean = false;
var isPlayingc1t06:Boolean = false;
var isPlayingc1t07:Boolean = false;
var isPlayingc1t08:Boolean = false;
var isPlayingc1t09:Boolean = false;
var isPlayingc1t10:Boolean = false;
var isPlayingc1t11:Boolean = false;
var isPlayingc1t12:Boolean = false;
var isPlayingc1t13:Boolean = false;
var isPlayingc1t14:Boolean = false;
var isPlayingc1t15:Boolean = false;
var isPlayingc1t16:Boolean = false;
//channel 2 booleans
var isPlayingc2t01:Boolean = false;
var isPlayingc2t02:Boolean = false;
var isPlayingc2t03:Boolean = false;
var isPlayingc2t04:Boolean = false;
var isPlayingc2t05:Boolean = false;
var isPlayingc2t06:Boolean = false;
var isPlayingc2t07:Boolean = false;
var isPlayingc2t08:Boolean = false;
var isPlayingc2t09:Boolean = false;
var isPlayingc2t10:Boolean = false;
var isPlayingc2t11:Boolean = false;
var isPlayingc2t12:Boolean = false;
var isPlayingc2t13:Boolean = false;
var isPlayingc2t14:Boolean = false;
var isPlayingc2t15:Boolean = false;
var isPlayingc2t16:Boolean = false;
//channel 3 booleans
var isPlayingc3t01:Boolean = false;
var isPlayingc3t02:Boolean = false;
var isPlayingc3t03:Boolean = false;
var isPlayingc3t04:Boolean = false;
var isPlayingc3t05:Boolean = false;
var isPlayingc3t06:Boolean = false;
var isPlayingc3t07:Boolean = false;
var isPlayingc3t08:Boolean = false;
var isPlayingc3t09:Boolean = false;
var isPlayingc3t10:Boolean = false;
var isPlayingc3t11:Boolean = false;
var isPlayingc3t12:Boolean = false;
var isPlayingc3t13:Boolean = false;
var isPlayingc3t14:Boolean = false;
var isPlayingc3t15:Boolean = false;
var isPlayingc3t16:Boolean = false;
//booleans for channel 4
var isPlayingc4t01:Boolean = false;
var isPlayingc4t02:Boolean = false;
var isPlayingc4t03:Boolean = false;
var isPlayingc4t04:Boolean = false;
var isPlayingc4t05:Boolean = false;
var isPlayingc4t06:Boolean = false;
var isPlayingc4t07:Boolean = false;
var isPlayingc4t08:Boolean = false;
var isPlayingc4t09:Boolean = false;
var isPlayingc4t10:Boolean = false;
var isPlayingc4t11:Boolean = false;
var isPlayingc4t12:Boolean = false;
var isPlayingc4t13:Boolean = false;
var isPlayingc4t14:Boolean = false;
var isPlayingc4t15:Boolean = false;
var isPlayingc4t16:Boolean = false;
//channel 5 has some booleans too!
var isPlayingc5t01:Boolean = false;
var isPlayingc5t02:Boolean = false;
var isPlayingc5t03:Boolean = false;
var isPlayingc5t04:Boolean = false;
var isPlayingc5t05:Boolean = false;
var isPlayingc5t06:Boolean = false;
var isPlayingc5t07:Boolean = false;
var isPlayingc5t08:Boolean = false;
var isPlayingc5t09:Boolean = false;
var isPlayingc5t10:Boolean = false;
var isPlayingc5t11:Boolean = false;
var isPlayingc5t12:Boolean = false;
var isPlayingc5t13:Boolean = false;
var isPlayingc5t14:Boolean = false;
var isPlayingc5t15:Boolean = false;
var isPlayingc5t16:Boolean = false;
//channel 6, now available with booleans!
var isPlayingc6t01:Boolean = false;
var isPlayingc6t02:Boolean = false;
var isPlayingc6t03:Boolean = false;
var isPlayingc6t04:Boolean = false;
var isPlayingc6t05:Boolean = false;
var isPlayingc6t06:Boolean = false;
var isPlayingc6t07:Boolean = false;
var isPlayingc6t08:Boolean = false;
var isPlayingc6t09:Boolean = false;
var isPlayingc6t10:Boolean = false;
var isPlayingc6t11:Boolean = false;
var isPlayingc6t12:Boolean = false;
var isPlayingc6t13:Boolean = false;
var isPlayingc6t14:Boolean = false;
var isPlayingc6t15:Boolean = false;
var isPlayingc6t16:Boolean = false;
//channel 7 news...i mean booleans 
var isPlayingc7t01:Boolean = false;
var isPlayingc7t02:Boolean = false;
var isPlayingc7t03:Boolean = false;
var isPlayingc7t04:Boolean = false;
var isPlayingc7t05:Boolean = false;
var isPlayingc7t06:Boolean = false;
var isPlayingc7t07:Boolean = false;
var isPlayingc7t08:Boolean = false;
var isPlayingc7t09:Boolean = false;
var isPlayingc7t10:Boolean = false;
var isPlayingc7t11:Boolean = false;
var isPlayingc7t12:Boolean = false;
var isPlayingc7t13:Boolean = false;
var isPlayingc7t14:Boolean = false;
var isPlayingc7t15:Boolean = false;
var isPlayingc7t16:Boolean = false;
//channel 8, live in your boolean!
var isPlayingc8t01:Boolean = false;
var isPlayingc8t02:Boolean = false;
var isPlayingc8t03:Boolean = false;
var isPlayingc8t04:Boolean = false;
var isPlayingc8t05:Boolean = false;
var isPlayingc8t06:Boolean = false;
var isPlayingc8t07:Boolean = false;
var isPlayingc8t08:Boolean = false;
var isPlayingc8t09:Boolean = false;
var isPlayingc8t10:Boolean = false;
var isPlayingc8t11:Boolean = false;
var isPlayingc8t12:Boolean = false;
var isPlayingc8t13:Boolean = false;
var isPlayingc8t14:Boolean = false;
var isPlayingc8t15:Boolean = false;
var isPlayingc8t16:Boolean = false;

//ints to right
var tempo:int = 1000;
var i:int = 164;

//and I'm stuck in the middle with the timers
var letsMoveTimeBar:Timer = new Timer(tempo);
this.letsMoveTimeBar.delay = tempo;


var mySoundc1t1:Sound = new Sound();
var mySoundc1t2:Sound = new Sound();
var mySoundc1t3:Sound = new Sound();
var mySoundc1t4:Sound = new Sound();
var mySoundc1t5:Sound = new Sound();
var mySoundc1t6:Sound = new Sound();
var mySoundc1t7:Sound = new Sound();
var mySoundc1t8:Sound = new Sound();
var mySoundc1t9:Sound = new Sound();
var mySoundc1t10:Sound = new Sound();
var mySoundc1t11:Sound = new Sound();
var mySoundc1t12:Sound = new Sound();
var mySoundc1t13:Sound = new Sound();
var mySoundc1t14:Sound = new Sound();
var mySoundc1t15:Sound = new Sound();
var mySoundc1t16:Sound = new Sound();
var mySoundc2t1:Sound = new Sound();
var mySoundc2t2:Sound = new Sound();
var mySoundc2t3:Sound = new Sound();
var mySoundc2t4:Sound = new Sound();
var mySoundc2t5:Sound = new Sound();
var mySoundc2t6:Sound = new Sound();
var mySoundc2t7:Sound = new Sound();
var mySoundc2t8:Sound = new Sound();
var mySoundc2t9:Sound = new Sound();
var mySoundc2t10:Sound = new Sound();
var mySoundc2t11:Sound = new Sound();
var mySoundc2t12:Sound = new Sound();
var mySoundc2t13:Sound = new Sound();
var mySoundc2t14:Sound = new Sound();
var mySoundc2t15:Sound = new Sound();
var mySoundc2t16:Sound = new Sound();

var mySoundc3t1:Sound = new Sound();
var mySoundc3t2:Sound = new Sound();
var mySoundc3t3:Sound = new Sound();
var mySoundc3t4:Sound = new Sound();
var mySoundc3t5:Sound = new Sound();
var mySoundc3t6:Sound = new Sound();
var mySoundc3t7:Sound = new Sound();
var mySoundc3t8:Sound = new Sound();
var mySoundc3t9:Sound = new Sound();
var mySoundc3t10:Sound = new Sound();
var mySoundc3t11:Sound = new Sound();
var mySoundc3t12:Sound = new Sound();
var mySoundc3t13:Sound = new Sound();
var mySoundc3t14:Sound = new Sound();
var mySoundc3t15:Sound = new Sound();
var mySoundc3t16:Sound = new Sound();

var mySoundc4t1:Sound = new Sound();
var mySoundc4t2:Sound = new Sound();
var mySoundc4t3:Sound = new Sound();
var mySoundc4t4:Sound = new Sound();
var mySoundc4t5:Sound = new Sound();
var mySoundc4t6:Sound = new Sound();
var mySoundc4t7:Sound = new Sound();
var mySoundc4t8:Sound = new Sound();
var mySoundc4t9:Sound = new Sound();
var mySoundc4t10:Sound = new Sound();
var mySoundc4t11:Sound = new Sound();
var mySoundc4t12:Sound = new Sound();
var mySoundc4t13:Sound = new Sound();
var mySoundc4t14:Sound = new Sound();
var mySoundc4t15:Sound = new Sound();
var mySoundc4t16:Sound = new Sound();

var mySoundc5t1:Sound = new Sound();
var mySoundc5t2:Sound = new Sound();
var mySoundc5t3:Sound = new Sound();
var mySoundc5t4:Sound = new Sound();
var mySoundc5t5:Sound = new Sound();
var mySoundc5t6:Sound = new Sound();
var mySoundc5t7:Sound = new Sound();
var mySoundc5t8:Sound = new Sound();
var mySoundc5t9:Sound = new Sound();
var mySoundc5t10:Sound = new Sound();
var mySoundc5t11:Sound = new Sound();
var mySoundc5t12:Sound = new Sound();
var mySoundc5t13:Sound = new Sound();
var mySoundc5t14:Sound = new Sound();
var mySoundc5t15:Sound = new Sound();
var mySoundc5t16:Sound = new Sound();

var mySoundc6t1:Sound = new Sound();
var mySoundc6t2:Sound = new Sound();
var mySoundc6t3:Sound = new Sound();
var mySoundc6t4:Sound = new Sound();
var mySoundc6t5:Sound = new Sound();
var mySoundc6t6:Sound = new Sound();
var mySoundc6t7:Sound = new Sound();
var mySoundc6t8:Sound = new Sound();
var mySoundc6t9:Sound = new Sound();
var mySoundc6t10:Sound = new Sound();
var mySoundc6t11:Sound = new Sound();
var mySoundc6t12:Sound = new Sound();
var mySoundc6t13:Sound = new Sound();
var mySoundc6t14:Sound = new Sound();
var mySoundc6t15:Sound = new Sound();
var mySoundc6t16:Sound = new Sound();

var mySoundc7t1:Sound = new Sound();
var mySoundc7t2:Sound = new Sound();
var mySoundc7t3:Sound = new Sound();
var mySoundc7t4:Sound = new Sound();
var mySoundc7t5:Sound = new Sound();
var mySoundc7t6:Sound = new Sound();
var mySoundc7t7:Sound = new Sound();
var mySoundc7t8:Sound = new Sound();
var mySoundc7t9:Sound = new Sound();
var mySoundc7t10:Sound = new Sound();
var mySoundc7t11:Sound = new Sound();
var mySoundc7t12:Sound = new Sound();
var mySoundc7t13:Sound = new Sound();
var mySoundc7t14:Sound = new Sound();
var mySoundc7t15:Sound = new Sound();
var mySoundc7t16:Sound = new Sound();

var mySoundc8t1:Sound = new Sound();
var mySoundc8t2:Sound = new Sound();
var mySoundc8t3:Sound = new Sound();
var mySoundc8t4:Sound = new Sound();
var mySoundc8t5:Sound = new Sound();
var mySoundc8t6:Sound = new Sound();
var mySoundc8t7:Sound = new Sound();
var mySoundc8t8:Sound = new Sound();
var mySoundc8t9:Sound = new Sound();
var mySoundc8t10:Sound = new Sound();
var mySoundc8t11:Sound = new Sound();
var mySoundc8t12:Sound = new Sound();
var mySoundc8t13:Sound = new Sound();
var mySoundc8t14:Sound = new Sound();
var mySoundc8t15:Sound = new Sound();
var mySoundc8t16:Sound = new Sound();


var myChannel:SoundChannel = new SoundChannel();

//strings in the red trunks
var timerbarStatus:String = "Stopped, at the start";

//sound loading area
mySoundc1t1.load(new URLRequest("/sound/Soundsc1t1.mp3"));
mySoundc1t2.load(new URLRequest("/sound/Soundsc1t2.mp3"));
mySoundc1t3.load(new URLRequest("/sound/Soundsc1t3.mp3"));
mySoundc1t4.load(new URLRequest("/sound/Soundsc1t4.mp3"));
mySoundc1t5.load(new URLRequest("/sound/Soundsc1t5.mp3"));
mySoundc1t6.load(new URLRequest("/sound/Soundsc1t6.mp3"));
mySoundc1t7.load(new URLRequest("/sound/Soundsc1t7.mp3"));
mySoundc1t8.load(new URLRequest("/sound/Soundsc1t8.mp3"));
mySoundc1t9.load(new URLRequest("/sound/Soundsc1t9.mp3"));
mySoundc1t10.load(new URLRequest("/sound/Soundsc1t10.mp3"));
mySoundc1t11.load(new URLRequest("/sound/Soundsc1t11.mp3"));
mySoundc1t12.load(new URLRequest("/sound/Soundsc1t12.mp3"));
mySoundc1t13.load(new URLRequest("/sound/Soundsc1t13.mp3"));
mySoundc1t14.load(new URLRequest("/sound/Soundsc1t14.mp3"));
mySoundc1t15.load(new URLRequest("/sound/Soundsc1t15.mp3"));
mySoundc1t16.load(new URLRequest("/sound/Soundsc1t16.mp3"));

mySoundc2t1.load(new URLRequest("/sound/Soundsc2t1.mp3"));
mySoundc2t2.load(new URLRequest("/sound/Soundsc2t2.mp3"));
mySoundc2t3.load(new URLRequest("/sound/Soundsc2t3.mp3"));
mySoundc2t4.load(new URLRequest("/sound/Soundsc2t4.mp3"));
mySoundc2t5.load(new URLRequest("/sound/Soundsc2t5.mp3"));
mySoundc2t6.load(new URLRequest("/sound/Soundsc2t6.mp3"));
mySoundc2t7.load(new URLRequest("/sound/Soundsc2t7.mp3"));
mySoundc2t8.load(new URLRequest("/sound/Soundsc2t8.mp3"));
mySoundc2t9.load(new URLRequest("/sound/Soundsc2t9.mp3"));
mySoundc2t10.load(new URLRequest("/sound/Soundsc2t10.mp3"));
mySoundc2t11.load(new URLRequest("/sound/Soundsc2t11.mp3"));
mySoundc2t12.load(new URLRequest("/sound/Soundsc2t12.mp3"));
mySoundc2t13.load(new URLRequest("/sound/Soundsc2t13.mp3"));
mySoundc2t14.load(new URLRequest("/sound/Soundsc2t14.mp3"));
mySoundc2t15.load(new URLRequest("/sound/Soundsc1t15.mp3"));
mySoundc2t16.load(new URLRequest("/sound/Soundsc2t16.mp3"));

mySoundc3t1.load(new URLRequest("/sound/Soundsc3t1.mp3"));
mySoundc3t2.load(new URLRequest("/sound/Soundsc3t2.mp3"));
mySoundc3t3.load(new URLRequest("/sound/Soundsc3t3.mp3"));
mySoundc3t4.load(new URLRequest("/sound/Soundsc3t4.mp3"));
mySoundc3t5.load(new URLRequest("/sound/Soundsc3t5.mp3"));
mySoundc3t6.load(new URLRequest("/sound/Soundsc3t6.mp3"));
mySoundc3t7.load(new URLRequest("/sound/Soundsc3t7.mp3"));
mySoundc3t8.load(new URLRequest("/sound/Soundsc3t8.mp3"));
mySoundc3t9.load(new URLRequest("/sound/Soundsc3t9.mp3"));
mySoundc3t10.load(new URLRequest("/sound/Soundsc3t10.mp3"));
mySoundc3t11.load(new URLRequest("/sound/Soundsc3t11.mp3"));
mySoundc3t12.load(new URLRequest("/sound/Soundsc3t12.mp3"));
mySoundc3t13.load(new URLRequest("/sound/Soundsc3t13.mp3"));
mySoundc3t14.load(new URLRequest("/sound/Soundsc3t14.mp3"));
mySoundc3t15.load(new URLRequest("/sound/Soundsc3t15.mp3"));
mySoundc3t16.load(new URLRequest("/sound/Soundsc3t16.mp3"));

mySoundc4t1.load(new URLRequest("/sound/Soundsc4t1.mp3"));
mySoundc4t2.load(new URLRequest("/sound/Soundsc4t2.mp3"));
mySoundc4t3.load(new URLRequest("/sound/Soundsc4t3.mp3"));
mySoundc4t4.load(new URLRequest("/sound/Soundsc4t4.mp3"));
mySoundc4t5.load(new URLRequest("/sound/Soundsc4t5.mp3"));
mySoundc4t6.load(new URLRequest("/sound/Soundsc4t6.mp3"));
mySoundc4t7.load(new URLRequest("/sound/Soundsc4t7.mp3"));
mySoundc4t8.load(new URLRequest("/sound/Soundsc4t8.mp3"));
mySoundc4t9.load(new URLRequest("/sound/Soundsc4t9.mp3"));
mySoundc4t10.load(new URLRequest("/sound/Soundsc4t10.mp3"));
mySoundc4t11.load(new URLRequest("/sound/Soundsc4t11.mp3"));
mySoundc4t12.load(new URLRequest("/sound/Soundsc4t12.mp3"));
mySoundc4t13.load(new URLRequest("/sound/Soundsc4t13.mp3"));
mySoundc4t14.load(new URLRequest("/sound/Soundsc4t14.mp3"));
mySoundc4t15.load(new URLRequest("/sound/Soundsc4t15.mp3"));
mySoundc4t16.load(new URLRequest("/sound/Soundsc4t16.mp3"));

mySoundc5t1.load(new URLRequest("/sound/Soundsc5t1.mp3"));
mySoundc5t2.load(new URLRequest("/sound/Soundsc5t2.mp3"));
mySoundc5t3.load(new URLRequest("/sound/Soundsc5t3.mp3"));
mySoundc5t4.load(new URLRequest("/sound/Soundsc5t4.mp3"));
mySoundc5t5.load(new URLRequest("/sound/Soundsc5t5.mp3"));
mySoundc5t6.load(new URLRequest("/sound/Soundsc5t6.mp3"));
mySoundc5t7.load(new URLRequest("/sound/Soundsc5t7.mp3"));
mySoundc5t8.load(new URLRequest("/sound/Soundsc5t8.mp3"));
mySoundc5t9.load(new URLRequest("/sound/Soundsc5t9.mp3"));
mySoundc5t10.load(new URLRequest("/sound/Soundsc5t10.mp3"));
mySoundc5t11.load(new URLRequest("/sound/Soundsc5t11.mp3"));
mySoundc5t12.load(new URLRequest("/sound/Soundsc5t12.mp3"));
mySoundc5t13.load(new URLRequest("/sound/Soundsc5t13.mp3"));
mySoundc5t14.load(new URLRequest("/sound/Soundsc7t14.mp3"));
mySoundc5t15.load(new URLRequest("/sound/Soundsc5t15.mp3"));
mySoundc5t16.load(new URLRequest("/sound/Soundsc5t16.mp3"));

mySoundc6t1.load(new URLRequest("/sound/Soundsc6t1.mp3"));
mySoundc6t2.load(new URLRequest("/sound/Soundsc6t2.mp3"));
mySoundc6t3.load(new URLRequest("/sound/Soundsc6t3.mp3"));
mySoundc6t4.load(new URLRequest("/sound/Soundsc6t4.mp3"));
mySoundc6t5.load(new URLRequest("/sound/Soundsc6t5.mp3"));
mySoundc6t6.load(new URLRequest("/sound/Soundsc6t6.mp3"));
mySoundc6t7.load(new URLRequest("/sound/Soundsc6t7.mp3"));
mySoundc6t8.load(new URLRequest("/sound/Soundsc6t8.mp3"));
mySoundc6t9.load(new URLRequest("/sound/Soundsc6t9.mp3"));
mySoundc6t10.load(new URLRequest("/sound/Soundsc6t10.mp3"));
mySoundc6t11.load(new URLRequest("/sound/Soundsc6t11.mp3"));
mySoundc6t12.load(new URLRequest("/sound/Soundsc6t12.mp3"));
mySoundc6t13.load(new URLRequest("/sound/Soundsc6t13.mp3"));
mySoundc6t14.load(new URLRequest("/sound/Soundsc6t14.mp3"));
mySoundc6t15.load(new URLRequest("/sound/Soundsc6t15.mp3"));
mySoundc6t16.load(new URLRequest("/sound/Soundsc6t16.mp3"));

mySoundc7t1.load(new URLRequest("/sound/Soundsc7t1.mp3"));
mySoundc7t2.load(new URLRequest("/sound/Soundsc7t2.mp3"));
mySoundc7t3.load(new URLRequest("/sound/Soundsc7t3.mp3"));
mySoundc7t4.load(new URLRequest("/sound/Soundsc7t4.mp3"));
mySoundc7t5.load(new URLRequest("/sound/Soundsc7t5.mp3"));
mySoundc7t6.load(new URLRequest("/sound/Soundsc7t6.mp3"));
mySoundc7t7.load(new URLRequest("/sound/Soundsc7t7.mp3"));
mySoundc7t8.load(new URLRequest("/sound/Soundsc7t8.mp3"));
mySoundc7t9.load(new URLRequest("/sound/Soundsc7t9.mp3"));
mySoundc7t10.load(new URLRequest("/sound/Soundsc7t10.mp3"));
mySoundc7t11.load(new URLRequest("/sound/Soundsc7t11.mp3"));
mySoundc7t12.load(new URLRequest("/sound/Soundsc7t12.mp3"));
mySoundc7t13.load(new URLRequest("/sound/Soundsc7t13.mp3"));
mySoundc7t14.load(new URLRequest("/sound/Soundsc7t14.mp3"));
mySoundc7t15.load(new URLRequest("/sound/Soundsc7t15.mp3"));
mySoundc7t16.load(new URLRequest("/sound/Soundsc7t16.mp3"));

mySoundc8t1.load(new URLRequest("/sound/Soundsc8t1.mp3"));
mySoundc8t2.load(new URLRequest("/sound/Soundsc8t2.mp3"));
mySoundc8t3.load(new URLRequest("/sound/Soundsc8t3.mp3"));
mySoundc8t4.load(new URLRequest("/sound/Soundsc8t4.mp3"));
mySoundc8t5.load(new URLRequest("/sound/Soundsc8t5.mp3"));
mySoundc8t6.load(new URLRequest("/sound/Soundsc8t6.mp3"));
mySoundc8t7.load(new URLRequest("/sound/Soundsc8t7.mp3"));
mySoundc8t8.load(new URLRequest("/sound/Soundsc8t8.mp3"));
mySoundc8t9.load(new URLRequest("/sound/Soundsc8t9.mp3"));
mySoundc8t10.load(new URLRequest("/sound/Soundsc8t10.mp3"));
mySoundc8t11.load(new URLRequest("/sound/Soundsc8t11.mp3"));
mySoundc8t12.load(new URLRequest("/sound/Soundsc8t12.mp3"));
mySoundc8t13.load(new URLRequest("/sound/Soundsc8t13.mp3"));
mySoundc8t14.load(new URLRequest("/sound/Soundsc8t14.mp3"));
mySoundc8t15.load(new URLRequest("/sound/Soundsc8t15.mp3"));
mySoundc8t16.load(new URLRequest("/sound/Soundsc8t16.mp3"));

var channel:SoundChannel;

//setting the event listeners
issaPlayButton.addEventListener(MouseEvent.CLICK, handlePlay);
issaPauseButton.addEventListener(MouseEvent.CLICK, handlePause);
issaStopButton.addEventListener(MouseEvent.CLICK, handleStop);
letsMoveTimeBar.addEventListener(TimerEvent.TIMER, moveTimeBar);
track1.Tick01.addEventListener(Event.CHANGE, checkboxChange);
stage.addEventListener(Event.ENTER_FRAME, checkIfHitTest);
stage.addEventListener(Event.CHANGE, timeBarTempo);



//setting the tempo defaults
tempoController.maximum = 2560; 
tempoController.minimum = 480;
tempoController.value = 1000;
tempoController.stepSize = 10;


function timeBarTempo(e:Event):void
{
	tempo = tempoController.value;
	this.letsMoveTimeBar.delay = tempo;
}


//funtion to move the timerbar. 
function moveTimeBar(e:TimerEvent):void
{
	//checks to see if the timebar is on the screen or not
	if (this.myTimeBar.x >= 0 && this.myTimeBar.x <= 480)
	{
		i = i + 21;
		this.myTimeBar.x = i;
		
	}
	//when the timebar reaches the last tick box, restart back to the start point
	else 
	{
		i = 164;
		this.myTimeBar.x = i;
		isPlayingc1t01 = false;
		isPlayingc1t02 = false;
		isPlayingc1t03 = false;
		isPlayingc1t04 = false;
		isPlayingc1t05 = false;
		isPlayingc1t06 = false;
		isPlayingc1t07 = false;
		isPlayingc1t08 = false;
		isPlayingc1t09 = false;
		isPlayingc1t10 = false;
		isPlayingc1t11 = false;
		isPlayingc1t12 = false;
		isPlayingc1t13 = false;
		isPlayingc1t14 = false;
		isPlayingc1t15 = false;
		isPlayingc1t16 = false;
 
		isPlayingc2t01 = false;
		isPlayingc2t02 = false;
		isPlayingc2t03 = false;
		isPlayingc2t04 = false;
		isPlayingc2t05 = false;
		isPlayingc2t06 = false;
		isPlayingc2t07 = false;
		isPlayingc2t08 = false;
		isPlayingc2t09 = false;
		isPlayingc2t10 = false;
		isPlayingc2t11 = false;
		isPlayingc2t12 = false;
		isPlayingc2t13 = false;
		isPlayingc2t14 = false;
		isPlayingc2t15 = false;
		isPlayingc2t16 = false;

		isPlayingc3t01 = false;
		isPlayingc3t02 = false;
		isPlayingc3t03 = false;
		isPlayingc3t04 = false;
		isPlayingc3t05 = false;
		isPlayingc3t06 = false;
		isPlayingc3t07 = false;
		isPlayingc3t08 = false;
		isPlayingc3t09 = false;
		isPlayingc3t10 = false;
		isPlayingc3t11 = false;
		isPlayingc3t12 = false;
		isPlayingc3t13 = false;
		isPlayingc3t14 = false;
		isPlayingc3t15 = false;
		isPlayingc3t16 = false;
	
		isPlayingc4t01 = false;
		isPlayingc4t02 = false;
		isPlayingc4t03 = false;
		isPlayingc4t04 = false;
		isPlayingc4t05 = false;
		isPlayingc4t06 = false;
		isPlayingc4t07 = false;
		isPlayingc4t08 = false;
		isPlayingc4t09 = false;
		isPlayingc4t10 = false;
		isPlayingc4t11 = false;
		isPlayingc4t12 = false;
		isPlayingc4t13 = false;
		isPlayingc4t14 = false;
		isPlayingc4t15 = false;
		isPlayingc4t16 = false;

		isPlayingc5t01 = false;
		isPlayingc5t02 = false;
		isPlayingc5t03 = false;
		isPlayingc5t04 = false;
		isPlayingc5t05 = false;
		isPlayingc5t06 = false;
		isPlayingc5t07 = false;
		isPlayingc5t08 = false;
		isPlayingc5t09 = false;
		isPlayingc5t10 = false;
		isPlayingc5t11 = false;
		isPlayingc5t12 = false;
		isPlayingc5t13 = false;
		isPlayingc5t14 = false;
		isPlayingc5t15 = false;
		isPlayingc5t16 = false;

		isPlayingc6t01 = false;
		isPlayingc6t02 = false;
		isPlayingc6t03 = false;
		isPlayingc6t04 = false;
		isPlayingc6t05 = false;
		isPlayingc6t06 = false;
		isPlayingc6t07 = false;
		isPlayingc6t08 = false;
		isPlayingc6t09 = false;
		isPlayingc6t10 = false;
		isPlayingc6t11 = false;
		isPlayingc6t12 = false;
		isPlayingc6t13 = false;
		isPlayingc6t14 = false;
		isPlayingc6t15 = false;
		isPlayingc6t16 = false;

		isPlayingc7t01 = false;
		isPlayingc7t02 = false;
		isPlayingc7t03 = false;
		isPlayingc7t04 = false;
		isPlayingc7t05 = false;
		isPlayingc7t06 = false;	
		isPlayingc7t07 = false;
		isPlayingc7t08 = false;
		isPlayingc7t09 = false;
		isPlayingc7t10 = false;
		isPlayingc7t11 = false;
		isPlayingc7t12 = false;
		isPlayingc7t13 = false;
		isPlayingc7t14 = false;
		isPlayingc7t15 = false;
		isPlayingc7t16 = false;

		isPlayingc8t01 = false;
		isPlayingc8t02 = false;
		isPlayingc8t03 = false;
		isPlayingc8t04 = false;
		isPlayingc8t05 = false;
		isPlayingc8t06 = false;
		isPlayingc8t07 = false;
		isPlayingc8t08 = false;
		isPlayingc8t09 = false;
		isPlayingc8t10 = false;
		isPlayingc8t11 = false;
		isPlayingc8t12 = false;
		isPlayingc8t13 = false;
		isPlayingc8t14 = false;
		isPlayingc8t15 = false;
		isPlayingc8t16 = false;
		trace("I did a poo");
	}
}

function checkboxChange(evt:Event) {
// checkbox status (checked = true, unchecked = false)
// evt.target is [object CheckBox]
checkboxStatus = evt.target.selected ;

if (checkboxStatus == true) 
{
trace("You checked me ON!");
}
else 
{
trace("You checked me OFF!");
}
}

function checkIfHitTest(e:Event):void
    {
      if(myTimeBar.hitTestObject(this.track1.Tick01) && (track1.Tick01.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t01){
        channel = mySoundc1t1.play(pausePoint);
		trace("Checkbox 1 is being touched");
		isPlayingc1t01 = true;
		  }
		  else if(isPlayingc1t01){
			  trace("track is playing");
		  }
	  }
	  else if(myTimeBar.hitTestObject(this.track1.Tick02)&& (track1.Tick02.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t02){
        	channel = mySoundc1t2.play(pausePoint);
			trace("Checkbox 1 is being touched");
			isPlayingc1t02 = true;
		  }
		  else
		  {
			trace("track is playing");  
		  }
      }
else if(myTimeBar.hitTestObject(this.track1.Tick03)&& (track1.Tick03.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t03){
        	channel = mySoundc1t3.play(pausePoint);
			trace("Checkbox 1 is being touched");
			isPlayingc1t03 = true;
		  }
		  else
		  {
			trace("track is playing");  
		  }
      }
	  else if(myTimeBar.hitTestObject(this.track1.Tick04)&& (track1.Tick04.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t04)
		  {
        	channel = mySoundc1t4.play(pausePoint);
			trace("Checkbox 1 is being touched");
			isPlayingc1t04 = true;
		  }
		else
		{
			trace("track is playing");
		}
		
      }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick05)&& (track1.Tick05.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t05)
		  {
        	channel = mySoundc1t5.play(pausePoint);
			trace("Checkbox 1 is being touched");
			isPlayingc1t05 = true;
		  }
		  else
		  {
			trace("track is playing");  
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick06)&& (track1.Tick06.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t06)
		  {
        	channel = mySoundc1t6.play(pausePoint);
			trace("Checkbox 1 is being touched");
			isPlayingc1t06 = true;
		  }
      	else
		{
			trace("track is playing");
		}
	  }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick07)&& (track1.Tick07.selected == true) && (letsMoveTimeBar.running))
      {
		if(!isPlayingc1t07)
		{       
	   		channel = mySoundc1t7.play(pausePoint);
			trace("Checkbox 1 is being touched");
			isPlayingc1t07 = true;
		}
	  else
	  {
			trace("track is playing");  
	  }
	  }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick08)&& (track1.Tick08.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t08){
        	channel = mySoundc1t8.play(pausePoint);
			trace("Checkbox 1 is being touched");
			isPlayingc1t08 = true;
		  }
		  else
		  {
			trace("track is playing");  
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick09)&& (track1.Tick09.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t09){
        	channel = mySoundc1t9.play(pausePoint);
			trace("Checkbox 1 is being touched");
			isPlayingc1t09 = true;
		  }
		  else
		  {
			trace("track is playing");  
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick10)&& (track1.Tick10.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t10){
        channel = mySoundc1t10.play(pausePoint);
		trace("Checkbox 10 is being touched");
		isPlayingc1t10 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick11)&& (track1.Tick11.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t11){
        channel = mySoundc1t11.play(pausePoint);
		trace("Checkbox 11 is being touched");
		isPlayingc1t11= true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
	  }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick12)&& (track1.Tick12.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t12){
        channel = mySoundc1t12.play(pausePoint);
		trace("Checkbox 12 is being touched");
		isPlayingc1t12 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
	  }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick13)&& (track1.Tick13.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t13){
        channel = mySoundc1t13.play(pausePoint);
		trace("Checkbox 1 is being touched");
		isPlayingc1t13 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick14)&& (track1.Tick14.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t14){
        channel = mySoundc1t14.play(pausePoint);
		trace("Checkbox 14 is being touched");
		isPlayingc1t14 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick15)&& (track1.Tick15.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t15){
        channel = mySoundc1t15.play(pausePoint);
		trace("Checkbox 1 is being touched");
		isPlayingc1t15 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track1.Tick16)&& (track1.Tick16.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc1t16){
        channel = mySoundc1t16.play(pausePoint);
		trace("Checkbox 1 is being touched");
		isPlayingc1t16 = true;
		  }
		  else
		  {
		 	trace("track is playing");
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track2.Tick01)&& (track2.Tick01.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc2t01){
        channel = mySoundc2t1.play(pausePoint);
		trace("Checkbox 1 is being touched");
		isPlayingc2t01 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
	  }
	  	  else if(myTimeBar.hitTestObject(this.track2.Tick02)&& (track2.Tick02.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc2t02){
        channel = mySoundc2t2.play(pausePoint);
		trace("Checkbox 2-2 is being touched");
		isPlayingc2t02 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track2.Tick03)&& (track2.Tick03.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc2t03){
        channel = mySoundc2t3.play(pausePoint);
		trace("Checkbox 2-3 is being touched");
		isPlayingc2t03 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track2.Tick04)&& (track2.Tick04.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc2t04){
        channel = mySoundc2t4.play(pausePoint);
		trace("Checkbox 1 is being touched");
		isPlayingc2t04 = true;
		  }
		  else
		  {
		  	trace("track is playing");
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track2.Tick05)&& (track2.Tick05.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc2t05){
        channel = mySoundc2t5.play(pausePoint);
		trace("Checkbox 2-5 is being touched");
		isPlayingc2t05 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track2.Tick06)&& (track2.Tick06.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc2t06){
        channel = mySoundc2t6.play(pausePoint);
		trace("Checkbox 2-6 is being touched");
		isPlayingc2t06 = true;
		  }
		else
		{
			trace("track is playing");
		}
      }
	  	  else if(myTimeBar.hitTestObject(this.track2.Tick07)&& (track2.Tick07.selected == true) && (letsMoveTimeBar.running))
      {
		if(!isPlayingc2t07){
        channel = mySoundc2t7.play(pausePoint);
		trace("Checkbox 1 is being touched");
		isPlayingc2t07 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  	  else if(myTimeBar.hitTestObject(this.track2.Tick08)&& (track2.Tick08.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc2t08){
		channel = mySoundc2t8.play(pausePoint);
		trace("Checkbox 2-8 is being touched");
		isPlayingc2t08 = true;
		}
		else
		{
			trace("track is playing");
		}
	  }
	  	  else if(myTimeBar.hitTestObject(this.track2.Tick09)&& (track2.Tick09.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc2t09){
        channel = mySoundc2t9.play(pausePoint);
		trace("Checkbox 1 is being touched");
		isPlayingc2t09 = true;
		  }
		  else
		  {
		  	trace("track is playing");
		  }
      }
	  	  else if(myTimeBar.hitTestObject(this.track2.Tick10)&& (track2.Tick10.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc2t10){
        channel = mySoundc2t10.play(pausePoint);
		trace("Checkbox 1 is being touched");
		isPlayingc2t10 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  else if(myTimeBar.hitTestObject(this.track2.Tick11)&& (track2.Tick11.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc2t11){
		channel = mySoundc2t11.play(pausePoint);
		trace("Checkbox 2-11 is being touched");
		isPlayingc2t11 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track2.Tick12)&& (track2.Tick12.selected == true) && (letsMoveTimeBar.running))
      {
		if(!isPlayingc2t12){
			channel = mySoundc2t12.play(pausePoint);
			trace("Checkbox 2-12 is being touched");
			isPlayingc2t12 = true;
		}
		else
		{
			trace("track is playing");
		}
	  }
	  else if(myTimeBar.hitTestObject(this.track2.Tick13)&& (track2.Tick13.selected == true) && (letsMoveTimeBar.running))
      {
        
		if(!isPlayingc2t13){
			channel = mySoundc2t13.play(pausePoint);
			trace("Checkbox 2-13 is being touched");
			isPlayingc2t13 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track2.Tick14)&& (track2.Tick14.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc2t14){
		channel = mySoundc2t14.play(pausePoint);
		trace("Checkbox 2-14 is being touched");
		isPlayingc2t14 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track2.Tick15)&& (track2.Tick15.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc2t15){
		channel = mySoundc2t15.play(pausePoint);
		trace("Checkbox 2-15 is being touched");
		isPlayingc2t15 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track2.Tick16)&& (track2.Tick16.selected == true) && (letsMoveTimeBar.running))
      {
        
		if(!isPlayingc2t16){
			channel = mySoundc2t16.play(pausePoint);
			trace("Checkbox 2-16 is being touched");
			isPlayingc2t16 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick01)&& (track3.Tick01.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t01){
		channel = mySoundc3t1.play(pausePoint);
		trace("Checkbox 3-1 is being touched");
		isPlayingc3t01 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick02)&& (track3.Tick02.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t02){
		channel = mySoundc3t2.play(pausePoint);
		trace("Checkbox 3-2 is being touched");
		isPlayingc3t02 = true;
		}
      	else
		{
			trace("track is playing");
		}
	  }
	  else if(myTimeBar.hitTestObject(this.track3.Tick03)&& (track3.Tick03.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t03){
		channel = mySoundc3t3.play(pausePoint);
		trace("Checkbox 3-3 is being touched");
		isPlayingc3t03 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick04)&& (track3.Tick04.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t04){
		channel = mySoundc3t4.play(pausePoint);
		trace("Checkbox 3-4 is being touched");
		isPlayingc3t04 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick05)&& (track3.Tick05.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t05){
		channel = mySoundc3t5.play(pausePoint);
		trace("Checkbox 3-5 is being touched");
		isPlayingc3t05 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick06)&& (track3.Tick06.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t06){
		channel = mySoundc3t6.play(pausePoint);
		trace("Checkbox 3-6 is being touched");
		isPlayingc3t06 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick07)&& (track3.Tick07.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t07){
		channel = mySoundc3t7.play(pausePoint);
		trace("Checkbox 3-7 is being touched");
		isPlayingc3t07 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick08)&& (track3.Tick08.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t08){
		channel = mySoundc3t8.play(pausePoint);
		trace("Checkbox 3-8 is being touched");
		isPlayingc3t08 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick09)&& (track3.Tick09.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t09){
		channel = mySoundc3t9.play(pausePoint);
		trace("Checkbox 3-9 is being touched");
		isPlayingc3t09 = true;
		   }
		   else
		   {
			   trace("track is playing");
		   }
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick10)&& (track3.Tick10.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc3t10){
        channel = mySoundc3t10.play(pausePoint);
		trace("Checkbox 3-10 is being touched");
		isPlayingc3t10 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	else if(myTimeBar.hitTestObject(this.track3.Tick11)&& (track3.Tick11.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t11){
		channel = mySoundc3t11.play(pausePoint);
		trace("Checkbox 3-11 is being touched");
		isPlayingc3t11 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick12)&& (track3.Tick12.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc3t12){
        channel = mySoundc3t12.play(pausePoint);
		trace("Checkbox 3-12 is being touched");
		isPlayingc3t12 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick13)&& (track3.Tick13.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t13){
		channel = mySoundc3t13.play(pausePoint);
		trace("Checkbox 3-13 is being touched");
		isPlayingc3t13 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick14)&& (track3.Tick14.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc3t14){
		channel = mySoundc3t14.play(pausePoint);
		trace("Checkbox 3-14 is being touched");
		isPlayingc3t14 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick15)&& (track3.Tick15.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc3t15){
        channel = mySoundc3t15.play(pausePoint);
		trace("Checkbox 3-15 is being touched");
		isPlayingc3t15 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  else if(myTimeBar.hitTestObject(this.track3.Tick16)&& (track3.Tick16.selected == true) && (letsMoveTimeBar.running))
      {
        channel = mySoundc3t16.play(pausePoint);
		trace("Checkbox 3-16 is being touched");
		isPlayingc3t16 = true;
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick01)&& (track4.Tick01.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t01){
		channel = mySoundc4t1.play(pausePoint);
		trace("Checkbox 4-1 is being touched");
		isPlayingc4t01 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick02)&& (track4.Tick02.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t02){
		channel = mySoundc4t2.play(pausePoint);
		trace("Checkbox 4-2 is being touched");
		isPlayingc4t02 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick03)&& (track4.Tick03.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc4t03){
        	channel = mySoundc4t3.play(pausePoint);
			trace("Checkbox 4-3 is being touched");
			isPlayingc4t03 = true;
		  }
		  else
		  {
			trace("track is playing");  
		  }
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick04)&& (track4.Tick04.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t04){
		channel = mySoundc4t4.play(pausePoint);
		trace("Checkbox 4-4 is being touched");
		isPlayingc4t04 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick05)&& (track4.Tick05.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc4t05){
        channel = mySoundc4t5.play(pausePoint);
		trace("Checkbox 4-5 is being touched");
		isPlayingc4t05 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick06)&& (track3.Tick06.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc4t06){
        channel = mySoundc4t6.play(pausePoint);
		trace("Checkbox 4-6 is being touched");
		isPlayingc3t06 = true;
		  }
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick07)&& (track3.Tick07.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t07){
		channel = mySoundc4t7.play(pausePoint);
		trace("Checkbox 4-7 is being touched");
		isPlayingc4t07 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick08)&& (track3.Tick08.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t08){
		channel = mySoundc4t8.play(pausePoint);
		trace("Checkbox 4-8 is being touched");
		isPlayingc4t08 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick09)&& (track4.Tick09.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t09){
		channel = mySoundc4t9.play(pausePoint);
		trace("Checkbox 4-9 is being touched");
		isPlayingc4t09 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick10)&& (track4.Tick10.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t10){
		channel = mySoundc4t10.play(pausePoint);
		trace("Checkbox 4-10 is being touched");
		isPlayingc4t10 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	else if(myTimeBar.hitTestObject(this.track4.Tick11)&& (track4.Tick11.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t11){
		channel = mySoundc4t11.play(pausePoint);
		trace("Checkbox 3-11 is being touched");
		isPlayingc4t11 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick12)&& (track4.Tick12.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t12){
		channel = mySoundc4t12.play(pausePoint);
		trace("Checkbox 4-12 is being touched");
		isPlayingc4t12 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick13)&& (track3.Tick13.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t13){
		channel = mySoundc4t13.play(pausePoint);
		trace("Checkbox 4-13 is being touched");
		isPlayingc3t13 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick14)&& (track4.Tick14.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t14){
		channel = mySoundc4t14.play(pausePoint);
		trace("Checkbox 4-14 is being touched");
		isPlayingc4t14 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick15)&& (track4.Tick15.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc4t15){
		channel = mySoundc4t15.play(pausePoint);
		trace("Checkbox 4-15 is being touched");
		isPlayingc4t15 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track4.Tick16)&& (track4.Tick16.selected == true) && (letsMoveTimeBar.running))
      {
		  if(!isPlayingc4t16){
        channel = mySoundc4t16.play(pausePoint);
		trace("Checkbox 4-16 is being touched");
		isPlayingc4t16 = true;
		  }
		  else
		  {
			  trace("track is playing");
		  }
      }	  
	  else if(myTimeBar.hitTestObject(this.track5.Tick01)&& (track5.Tick01.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t01){
		channel = mySoundc5t1.play(pausePoint);
		trace("Checkbox 5-1 is being touched");
		isPlayingc5t01 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick02)&& (track5.Tick02.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t02){
		channel = mySoundc5t2.play(pausePoint);
		trace("Checkbox 5-2 is being touched");
		isPlayingc5t02 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick03)&& (track5.Tick03.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t03){
		channel = mySoundc5t3.play(pausePoint);
		trace("Checkbox 5-3 is being touched");
		isPlayingc5t03 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick04)&& (track5.Tick04.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t04){
		channel = mySoundc5t4.play(pausePoint);
		trace("Checkbox 5-4 is being touched");
		isPlayingc5t04 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick05)&& (track5.Tick05.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t05){
		channel = mySoundc5t5.play(pausePoint);
		trace("Checkbox 5-5 is being touched");
		isPlayingc5t05 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick06)&& (track5.Tick06.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t06){
		channel = mySoundc5t6.play(pausePoint);
		trace("Checkbox 5-6 is being touched");
		isPlayingc5t06 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick07)&& (track5.Tick07.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t07){
		channel = mySoundc5t7.play(pausePoint);
		trace("Checkbox 5-7 is being touched");
		isPlayingc5t07 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick08)&& (track5.Tick08.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t08){
		channel = mySoundc5t8.play(pausePoint);
		trace("Checkbox 5-8 is being touched");
		isPlayingc5t08 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick09)&& (track5.Tick09.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc1t09){
		channel = mySoundc5t9.play(pausePoint);
		trace("Checkbox 5-9 is being touched");
		isPlayingc5t09 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick10)&& (track5.Tick10.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t10){
		channel = mySoundc5t10.play(pausePoint);
		trace("Checkbox 5-10 is being touched");
		isPlayingc5t10 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	else if(myTimeBar.hitTestObject(this.track5.Tick11)&& (track5.Tick11.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t11){
		channel = mySoundc5t11.play(pausePoint);
		trace("Checkbox 5-11 is being touched");
		isPlayingc5t11 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick12)&& (track5.Tick12.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t12){
		channel = mySoundc5t12.play(pausePoint);
		trace("Checkbox 5-12 is being touched");
		isPlayingc5t12 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick13)&& (track5.Tick13.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t13){
		channel = mySoundc5t13.play(pausePoint);
		trace("Checkbox 5-13 is being touched");
		isPlayingc5t13 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick14)&& (track5.Tick14.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t14){
		channel = mySoundc5t14.play(pausePoint);
		trace("Checkbox 5-14 is being touched");
		isPlayingc5t14 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick15)&& (track5.Tick15.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t15){
		channel = mySoundc5t15.play(pausePoint);
		trace("Checkbox 5-15 is being touched");
		isPlayingc5t15 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track5.Tick16)&& (track5.Tick16.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc5t16){
		channel = mySoundc5t16.play(pausePoint);
		trace("Checkbox 5-16 is being touched");
		isPlayingc5t16 = true;
		}
      }	  else if(myTimeBar.hitTestObject(this.track6.Tick01)&& (track6.Tick01.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t01){
		channel = mySoundc6t1.play(pausePoint);
		trace("Checkbox 6-1 is being touched");
		isPlayingc6t01 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick02)&& (track6.Tick02.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t02){
		channel = mySoundc6t2.play(pausePoint);
		trace("Checkbox 6-2 is being touched");
		isPlayingc6t02 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick03)&& (track6.Tick03.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t03){
		channel = mySoundc6t3.play(pausePoint);
		trace("Checkbox 6-3 is being touched");
		isPlayingc6t03 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick04)&& (track6.Tick04.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t04){
		channel = mySoundc6t4.play(pausePoint);
		trace("Checkbox 6-4 is being touched");
		isPlayingc6t04 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick05)&& (track6.Tick05.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t05){
		channel = mySoundc6t5.play(pausePoint);
		trace("Checkbox 6-5 is being touched");
		isPlayingc6t05 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick06)&& (track6.Tick06.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t06){
		channel = mySoundc6t6.play(pausePoint);
		trace("Checkbox 6-6 is being touched");
		isPlayingc6t06 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick07)&& (track6.Tick07.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t07){
		channel = mySoundc6t7.play(pausePoint);
		trace("Checkbox 6-7 is being touched");
		isPlayingc6t07 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick08)&& (track6.Tick08.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t08){
		channel = mySoundc6t8.play(pausePoint);
		trace("Checkbox 6-8 is being touched");
		isPlayingc6t08 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick09)&& (track6.Tick09.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t09){
		channel = mySoundc6t9.play(pausePoint);
		trace("Checkbox 6-9 is being touched");
		isPlayingc6t09 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick10)&& (track6.Tick10.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t10){
		channel = mySoundc6t10.play(pausePoint);
		trace("Checkbox 6-10 is being touched");
		isPlayingc6t10 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	else if(myTimeBar.hitTestObject(this.track6.Tick11)&& (track6.Tick11.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t11){
		channel = mySoundc6t11.play(pausePoint);
		trace("Checkbox 6-11 is being touched");
		isPlayingc6t11 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick12)&& (track6.Tick12.selected == true) && (letsMoveTimeBar.running))
      {
       if(!isPlayingc6t12){
	   channel = mySoundc6t12.play(pausePoint);
		trace("Checkbox 6-12 is being touched");
		isPlayingc6t12 = true;
	   }
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick13)&& (track6.Tick13.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t13){
		channel = mySoundc6t13.play(pausePoint);
		trace("Checkbox 6-13 is being touched");
		isPlayingc6t13 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick14)&& (track6.Tick14.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t14){
		channel = mySoundc6t14.play(pausePoint);
		trace("Checkbox 6-14 is being touched");
		isPlayingc6t14 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick15)&& (track6.Tick15.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t15){
		channel = mySoundc6t15.play(pausePoint);
		trace("Checkbox 6-15 is being touched");
		isPlayingc6t15 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track6.Tick16)&& (track6.Tick16.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc6t16){
		channel = mySoundc6t16.play(pausePoint);
		trace("Checkbox 6-16 is being touched");
		isPlayingc6t16 = true;
		}
		else
		{
			trace("track is playing");
		}
      }	  
	  else if(myTimeBar.hitTestObject(this.track7.Tick01)&& (track7.Tick01.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t01){
		channel = mySoundc7t1.play(pausePoint);
		trace("Checkbox 7-1 is being touched");
		isPlayingc7t01 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick02)&& (track7.Tick02.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t02){
		channel = mySoundc7t2.play(pausePoint);
		trace("Checkbox 7-2 is being touched");
		isPlayingc7t02 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick03)&& (track7.Tick03.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t03){
		channel = mySoundc7t3.play(pausePoint);
		trace("Checkbox 7-3 is being touched");
		isPlayingc7t03 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick04)&& (track7.Tick04.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t04){
		channel = mySoundc7t4.play(pausePoint);
		trace("Checkbox 7-4 is being touched");
		isPlayingc7t04 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick05)&& (track7.Tick05.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t05){
		channel = mySoundc7t5.play(pausePoint);
		trace("Checkbox 7-5 is being touched");
		isPlayingc7t05 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick06)&& (track7.Tick06.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t06){
		channel = mySoundc7t6.play(pausePoint);
		trace("Checkbox 7-6 is being touched");
		isPlayingc7t06 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick07)&& (track7.Tick07.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t07){
		channel = mySoundc7t7.play(pausePoint);
		trace("Checkbox 7-7 is being touched");
		isPlayingc7t07 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick08)&& (track7.Tick08.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t08){
		channel = mySoundc7t8.play(pausePoint);
		trace("Checkbox 7-8 is being touched");
		isPlayingc7t08 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick09)&& (track7.Tick09.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t09){
		channel = mySoundc7t9.play(pausePoint);
		trace("Checkbox 7-9 is being touched");
		isPlayingc7t09 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick10)&& (track7.Tick10.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t10){
		channel = mySoundc7t10.play(pausePoint);
		trace("Checkbox 7-10 is being touched");
		isPlayingc7t10 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	else if(myTimeBar.hitTestObject(this.track7.Tick11)&& (track7.Tick11.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t11){
		channel = mySoundc7t11.play(pausePoint);
		trace("Checkbox 7-11 is being touched");
		isPlayingc7t11 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick12)&& (track7.Tick12.selected == true) && (letsMoveTimeBar.running))
      {
        
		if(!isPlayingc7t12){
			channel = mySoundc7t12.play(pausePoint);
		trace("Checkbox 7-12 is being touched");
		isPlayingc7t12 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick13)&& (track7.Tick13.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t13){
		channel = mySoundc7t13.play(pausePoint);
		trace("Checkbox 7-13 is being touched");
		isPlayingc7t13 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick14)&& (track7.Tick14.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t14){
		channel = mySoundc7t14.play(pausePoint);
		trace("Checkbox 7-14 is being touched");
		isPlayingc7t14 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick15)&& (track7.Tick15.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t15){
		channel = mySoundc7t15.play(pausePoint);
		trace("Checkbox 7-15 is being touched");
		isPlayingc7t15 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track7.Tick16)&& (track7.Tick16.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc7t16){
		channel = mySoundc7t16.play(pausePoint);
		trace("Checkbox 7-16 is being touched");
		isPlayingc7t16 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  	  else if(myTimeBar.hitTestObject(this.track8.Tick01)&& (track8.Tick01.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t01){
		channel = mySoundc8t1.play(pausePoint);
		trace("Checkbox 8-1 is being touched");
		isPlayingc8t01 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick02)&& (track8.Tick02.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t02){
		channel = mySoundc8t2.play(pausePoint);
		trace("Checkbox 8-2 is being touched");
		isPlayingc8t02 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick03)&& (track8.Tick03.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t03){
		channel = mySoundc8t3.play(pausePoint);
		trace("Checkbox 8-3 is being touched");
		isPlayingc8t03 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick04)&& (track8.Tick04.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t04){
		channel = mySoundc8t4.play(pausePoint);
		trace("Checkbox 8-4 is being touched");
		isPlayingc8t04 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick05)&& (track8.Tick05.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t05){
		channel = mySoundc8t5.play(pausePoint);
		trace("Checkbox 8-5 is being touched");
		isPlayingc8t05 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick06)&& (track8.Tick06.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t06){
		channel = mySoundc8t6.play(pausePoint);
		trace("Checkbox 8-6 is being touched");
		isPlayingc8t06 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick07)&& (track8.Tick07.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t07){
		channel = mySoundc8t7.play(pausePoint);
		trace("Checkbox 8-7 is being touched");
		isPlayingc8t07 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick08)&& (track8.Tick08.selected == true) && (letsMoveTimeBar.running))
      {
        
		if(!isPlayingc8t08){
			channel = mySoundc8t8.play(pausePoint);
			trace("Checkbox 8-8 is being touched");
			isPlayingc8t08 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick09)&& (track8.Tick09.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t09){
			channel = mySoundc8t9.play(pausePoint);
			trace("Checkbox 8-9 is being touched");
			isPlayingc8t09 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick10)&& (track8.Tick10.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t10){
		channel = mySoundc8t10.play(pausePoint);
		trace("Checkbox 8-10 is being touched");
		isPlayingc8t10 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	else if(myTimeBar.hitTestObject(this.track8.Tick11)&& (track8.Tick11.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t11){
		channel = mySoundc8t11.play(pausePoint);
		trace("Checkbox 8-11 is being touched");
		isPlayingc8t11 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick12)&& (track8.Tick12.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t12){
		channel = mySoundc8t12.play(pausePoint);
		trace("Checkbox 8-12 is being touched");
		isPlayingc8t12 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick13)&& (track8.Tick13.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t13){
		channel = mySoundc8t13.play(pausePoint);
		trace("Checkbox 8-13 is being touched");
		isPlayingc8t13 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick14)&& (track8.Tick14.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t14){
		channel = mySoundc8t14.play(pausePoint);
		trace("Checkbox 8-14 is being touched");
		isPlayingc8t14 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick15)&& (track8.Tick15.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t15){
		channel = mySoundc8t15.play(pausePoint);
		trace("Checkbox 8-15 is being touched");
		isPlayingc8t15 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
	  else if(myTimeBar.hitTestObject(this.track8.Tick16)&& (track8.Tick16.selected == true) && (letsMoveTimeBar.running))
      {
        if(!isPlayingc8t16){
		channel = mySoundc8t16.play(pausePoint);
		trace("Checkbox 8-16 is being touched");
		isPlayingc8t16 = true;
		}
		else
		{
			trace("track is playing");
		}
      }
    }


function handlePlay(e:MouseEvent):void
{
	if (letsMoveTimeBar.running)
	{
		trace("The timer is already running silly");
	}
	else
	{
		letsMoveTimeBar.start();
		timerbarStatus = "Timer Bar is now moving";
		trace(timerbarStatus);
	}
}

function handlePause(e:MouseEvent):void
{
	if(letsMoveTimeBar.running)
	{
		pausePoint = channel.position;
        channel.stop();
		letsMoveTimeBar.stop();
		timerbarStatus = "You just paused the timer bar while it was playing";
		trace(timerbarStatus);
		trace(pausePoint);
	}
	
	
}

function handleStop(e:MouseEvent):void
{
	letsMoveTimeBar.stop();
	i=164;
	pausePoint = 0.00;
	this.myTimeBar.x = i;
	myChannel.stop();
	channel.stop();
	isPlayingc1t01 = false;
	isPlayingc1t02 = false;
	isPlayingc1t03 = false;
	isPlayingc1t04 = false;
	isPlayingc1t05 = false;
	isPlayingc1t06 = false;
	isPlayingc1t07 = false;
	isPlayingc1t08 = false;
	isPlayingc1t09 = false;
	isPlayingc1t10 = false;
	isPlayingc1t11 = false;
	isPlayingc1t12 = false;
	isPlayingc1t13 = false;
	isPlayingc1t14 = false;
	isPlayingc1t15 = false;
	isPlayingc1t16 = false;
 
	isPlayingc2t01 = false;
	isPlayingc2t02 = false;
	isPlayingc2t03 = false;
	isPlayingc2t04 = false;
	isPlayingc2t05 = false;
	isPlayingc2t06 = false;
	isPlayingc2t07 = false;
	isPlayingc2t08 = false;
	isPlayingc2t09 = false;
	isPlayingc2t10 = false;
	isPlayingc2t11 = false;
	isPlayingc2t12 = false;
	isPlayingc2t13 = false;
	isPlayingc2t14 = false;
	isPlayingc2t15 = false;
	isPlayingc2t16 = false;

	isPlayingc3t01 = false;
	isPlayingc3t02 = false;
	isPlayingc3t03 = false;
	isPlayingc3t04 = false;
	isPlayingc3t05 = false;
	isPlayingc3t06 = false;
	isPlayingc3t07 = false;
	isPlayingc3t08 = false;
	isPlayingc3t09 = false;
	isPlayingc3t10 = false;
	isPlayingc3t11 = false;
	isPlayingc3t12 = false;
	isPlayingc3t13 = false;
	isPlayingc3t14 = false;
	isPlayingc3t15 = false;
	isPlayingc3t16 = false;

	isPlayingc4t01 = false;
	isPlayingc4t02 = false;
	isPlayingc4t03 = false;
	isPlayingc4t04 = false;
	isPlayingc4t05 = false;
	isPlayingc4t06 = false;
	isPlayingc4t07 = false;
	isPlayingc4t08 = false;
	isPlayingc4t09 = false;
	isPlayingc4t10 = false;
	isPlayingc4t11 = false;
	isPlayingc4t12 = false;
	isPlayingc4t13 = false;
	isPlayingc4t14 = false;
	isPlayingc4t15 = false;
	isPlayingc4t16 = false;

	isPlayingc5t01 = false;
	isPlayingc5t02 = false;
	isPlayingc5t03 = false;
	isPlayingc5t04 = false;
	isPlayingc5t05 = false;
	isPlayingc5t06 = false;
	isPlayingc5t07 = false;
	isPlayingc5t08 = false;
	isPlayingc5t09 = false;
	isPlayingc5t10 = false;
	isPlayingc5t11 = false;
	isPlayingc5t12 = false;
	isPlayingc5t13 = false;
	isPlayingc5t14 = false;
	isPlayingc5t15 = false;
	isPlayingc5t16 = false;

	isPlayingc6t01 = false;
	isPlayingc6t02 = false;
	isPlayingc6t03 = false;
	isPlayingc6t04 = false;
	isPlayingc6t05 = false;
	isPlayingc6t06 = false;
	isPlayingc6t07 = false;
	isPlayingc6t08 = false;
	isPlayingc6t09 = false;
	isPlayingc6t10 = false;
	isPlayingc6t11 = false;
	isPlayingc6t12 = false;
	isPlayingc6t13 = false;
	isPlayingc6t14 = false;
	isPlayingc6t15 = false;
	isPlayingc6t16 = false;

	isPlayingc7t01 = false;
	isPlayingc7t02 = false;
	isPlayingc7t03 = false;
	isPlayingc7t04 = false;
	isPlayingc7t05 = false;
	isPlayingc7t06 = false;
	isPlayingc7t07 = false;
	isPlayingc7t08 = false;
	isPlayingc7t09 = false;
	isPlayingc7t10 = false;
	isPlayingc7t11 = false;
	isPlayingc7t12 = false;
	isPlayingc7t13 = false;
	isPlayingc7t14 = false;
	isPlayingc7t15 = false;
	isPlayingc7t16 = false;

	isPlayingc8t01 = false;
	isPlayingc8t02 = false;
	isPlayingc8t03 = false;
	isPlayingc8t04 = false;
	isPlayingc8t05 = false;
	isPlayingc8t06 = false;
	isPlayingc8t07 = false;
	isPlayingc8t08 = false;
	isPlayingc8t09 = false;
	isPlayingc8t10 = false;
	isPlayingc8t11 = false;
	isPlayingc8t12 = false;
	isPlayingc8t13 = false;
	isPlayingc8t14 = false;
	isPlayingc8t15 = false;
	isPlayingc8t16 = false;
	timerbarStatus = "OMG! You killed the boogie!";
	trace(timerbarStatus);
}

function timerResetter(e:Event):void
{
	letsMoveTimeBar.stop();
	letsMoveTimeBar.reset();
	letsMoveTimeBar.start();

}
