/*
 * Check for browser support
 */

var recognizing = false;

/*
 * Check for browser support
 */

var recognizing = false;
var final_transcript = '';
var ignore_onend;
var start_timestamp;

var textBox = $('#keyword');
var recButton = $('.form--search #rec-button');
var logo_img = $('#logo-img');

if ('webkitSpeechRecognition' in window) {
  console.log('Your browser supports speech rsecognition.');
} else {
  console.log('Sorry your browser does not suppor speech recognition.');
}

var recognition = new webkitSpeechRecognition();
recognition.continuous = true;
recognition.interimResults = true;

recognition.onstart = function() {
  recognizing = true;
  console.log('info_speak_now');
  $('#rec-button > i').addClass('recording');
};

recognition.onerror = function(event) {
  if (event.error == 'no-speech') {
    start_img.src = '/resources/img/mic.gif';
    console.log('info_no_speech');
    ignore_onend = true;
  }
  if (event.error == 'audio-capture') {
    start_img.src = '/resources/img/mic.gif';
    console.log('info_no_microphone');
    ignore_onend = true;
  }
  if (event.error == 'not-allowed') {
    if (event.timeStamp - start_timestamp < 100) {
      console.log('info_blocked');
    } else {
      console.log('info_denied');
    }
    ignore_onend = true;
  }
};

recognition.onend = function() {
  recognizing = false;
  $('#rec-button > i').removeClass('recording');
  if (ignore_onend) {
    return;
  }

  if (!final_transcript) {
    console.log('info_start');
  } else {
    textBox.val(final_transcript);
  }
};

recognition.onresult = function(event) {
  var interim_transcript = '';
  for (var i = event.resultIndex; i < event.results.length; ++i) {
    if (event.results[i].isFinal) {
      final_transcript += event.results[i][0].transcript;
    } else {
      interim_transcript += event.results[i][0].transcript;
    }
  }
  console.log(interim_transcript);
  textBox.val(interim_transcript);
  goCategoryPage();
};

recButton.click(function() {
  console.log('rec-button clicked');

  if (recognizing) {
    recognition.stop();
    // return;
  } else {
    final_transcript = '';
    recognition.lang = 'ko-KR';
    recognition.start();
    ignore_onend = false;
    console.log('info_allow');
    start_timestamp = event.timeStamp;
  }
});

function matchCategoryToUrl(category){
  category_url = {'셔츠':'top', '바지':'pants',
                  '신발':'shoes', '기타':'atc',
                  '없음':'#'}
  try {
    url = category_url[category];
  }
  catch (e) {
    url = '#';
    console.log(e); // pass exception object to error handler
  }
  return url
}

function getCategoryFromText(text){
  keyword_list = ['셔츠', '바지', '신발', '기타']

  for (var keyword of keyword_list){
    if (text.search(keyword) != -1){
      console.log(text, keyword);
      return keyword;
    }
  }
  return '없음'
}

function goCategoryPage(){
  var text = textBox.val();
  category = getCategoryFromText(text);
  url = matchCategoryToUrl(category);
  location.href = url;
  console.log(url)
}

function isEnterPressed() {
  return event.keyCode==13
}

function mostHotKeyword(keyword_data){
	try{
		return keyword_data["most_hot_keyword"]
	}
	catch (e){
		console.log(e); // pass exception object to error handler
		return 'default'
	}
}

function convertKeywordToImageUrl(keyword){
	  var img_url = {"top":"https://image-logo.alba.kr/data_image2/jobimg/201806/2018060320154739297_0.png",
              "bottom":"https://image-logo.alba.kr/data_image2/jobimg/201806/2018060320261929681_0.png",
              "shoes":"https://image-logo.alba.kr/data_image2/jobimg/201806/2018060320214759232_0.png",
              "etc":"https://image-logo.alba.kr/data_image2/jobimg/201806/2018060216501197606_0.png",
              "default":"https://image-logo.alba.kr/data_image2/jobimg/201806/2018060320320532047_0.png"
	  };
	  
	  try {
		    keyword_url = img_url[keyword];
		  }
		  catch (e) {
		   console.log(e); // pass exception object to error handler
		   keyword_url = img_url["default"];
		  }

		  return keyword_url;
}

function loadLogoImage(){
	  var server_url = 'http://52.231.65.117:5000/';
	  $.ajax({
	    type:'get',
	    url: server_url+'current_hot_keyword',
	    success: function(data){
	      console.log(data);
	      keyword_data = JSON.parse(data);
	      console.log()
	      keyword = mostHotKeyword(keyword_data);
	      url = convertKeywordToImageUrl(keyword);
	      logo_img.attr("src", url);
	    },
	    error:function(data){
	      // TODO
	    }
	  });
	
}

$(document).ready(function (e) {
	loadLogoImage();
	
	
});
