
/*!
 *
 * WebRTC Lab 
 * @author dodortus (codejs.co.kr / dodortus@gmail.com)
 *
 */
$(function() {
	
	
	  
  if (typeof webkitSpeechRecognition !== 'function') {
    alert('크롬에서만 동작 합니다.');
    return false;
  }
  
	  navigator.getUserMedia = navigator.getUserMedia ||
	  navigator.webkitGetUserMedia || navigator.mozGetUserMedia;

	const videoEl = document.getElementById('video');
	const canvasEl = document.getElementById('canvas');
	const width = 350;
	const height = 260;

  let isRecognizing = false;
  let ignoreEndProcess = false;
  let finalTranscript = '';

  const audio = document.querySelector('#audio');
  const recognition = new webkitSpeechRecognition();
  const language = 'ko-KR';
  const two_line = /\n\n/g;
  const one_line = /\n/g;
  const first_char = /\S/;

  const $btnMic = $('#btn-mic');
 	const $result = $('#result');
 	const $iconMusic = $('#icon-music');

  recognition.continuous = true;
  recognition.interimResults = true;

  /**
   * 음성 인식 시작 처리
   */
  recognition.onstart = function() {
    console.log('onstart', arguments);
    isRecognizing = true;
    $btnMic.attr('class', 'on');
  };

  /**
   * 음성 인식 종료 처리
   * @returns {boolean}
   */
  recognition.onend = function() {
    console.log('onend', arguments);
    isRecognizing = false;

    if (ignoreEndProcess) {
      return false;
    }

    // DO end process
    $btnMic.attr('class', 'off');
    if (!finalTranscript) {
      console.log('empty finalTranscript');
      return false;
    }
  };

  /**
   * 음성 인식 결과 처리
   * @param event
   */
  recognition.onresult = function(event) {
    console.log('onresult', event);

    let interimTranscript = '';
    if (typeof(event.results) === 'undefined') {
      recognition.onend = null;
      recognition.stop();
      return;
    }

    for (let i = event.resultIndex; i < event.results.length; ++i) {
      if (event.results[i].isFinal) {
        finalTranscript += event.results[i][0].transcript;
      } else {
        interimTranscript += event.results[i][0].transcript;
      }
    }

    finalTranscript = capitalize(finalTranscript);
    final_span.innerHTML = linebreak(finalTranscript);
    interim_span.innerHTML = linebreak(interimTranscript);

    console.log('finalTranscript', finalTranscript);
    console.log('interimTranscript', interimTranscript);
    fireCommand(interimTranscript);
  };

  /**
   * 음성 인식 에러 처리
   * @param event
   */
  recognition.onerror = function(event) {
    console.log('onerror', event);

    if (event.error.match(/no-speech|audio-capture|not-allowed/)) {
      ignoreEndProcess = true;
    }

    $btnMic.attr('class', 'off');
  };

  /**
   * 명령어 처리
   * @param string
   */
  function fireCommand(string) {
  	if (string.endsWith('자전거')) {
  		$result.attr('class', 'red');
  	} else if (string.endsWith('알람') || string.endsWith('알 람')) {
  		alert('알람');
  	} else if (string.endsWith('노래 켜') || string.endsWith('음악 켜')) {
  		audio.play();
  		$iconMusic.addClass('visible');
  	} else if (string.endsWith('노래 꺼') || string.endsWith('음악 꺼')) {
  		audio.pause();
  		$iconMusic.removeClass('visible');
  	} else if (string.endsWith('볼륨 업') || string.endsWith('볼륨업')) {
  		audio.volume += 0.2;
  	} else if (string.endsWith('볼륨 다운') || string.endsWith('볼륨다운')) {
  		audio.volume -= 0.2;
  	} else if (string.endsWith('스피치') || string.endsWith('말해줘') || string.endsWith('말 해 줘')) {
  	  textToSpeech($('#final_span').text() || '전 음성 인식된 글자를 읽습니다다다.');
  	} else if(string.endsWith('로그아웃') || string.endsWith('로그 아웃')){
  		location.href="logout.do";
  	} else if(string.endsWith('홈') || string.endsWith('메인')){
  		location.href="main.do";
  	} else if(string.endsWith('코스') || string.endsWith('코 스')){
  		location.href="Certifi.do";
  	} else if(string.endsWith('모임') || string.endsWith('모 임')){
  		location.href="meetpolllist.do";
  	} else if(string.endsWith('정보') || string.endsWith('정 보')){
  		location.href="pdslist.do";
  	} else if(string.endsWith('카메라 켜') || string.endsWith('카 메 라') || string.endsWith('카메 라') || string.endsWith('사진') || string.endsWith('비디오')){
  		$('#content1').show();
  		navigator.getUserMedia({ audio: false, video: true }, success, error);
  	} else if(string.endsWith('카메라 꺼')){
  		$('#btn-capture').last().trigger('click');
  		$('#content1').hide();
  		navigator.getUserMedia({ audio: false, video: false }, success, error);
  	} else if(string.endsWith('사진 찍어')){
  		$('#btn-capture').last().trigger('click');
  	}
  }

  

  /**
   * 개행 처리
   * @param s
   * @returns {string}
   */
  function linebreak(s) {
    return s.replace(two_line, '<p></p>').replace(one_line, '<br>');
  }

  /**
   * 첫문자를 대문자로 변환
   * @param s
   * @returns {string | void | *}
   */
  function capitalize(s) {
    return s.replace(first_char, function(m) {
      return m.toUpperCase();
    });
  }

  /**
   * 음성 인식 트리거
   * @param event
   */
  function start(event) {
    if (isRecognizing) {
      recognition.stop();
      return;
    }
    recognition.lang = language;
    recognition.start();
    ignoreEndProcess = false;

    finalTranscript = '';
    final_span.innerHTML = '';
    interim_span.innerHTML = '';
  }

  /**
   * 문자를 음성으로 읽어 줍니다.
   * 지원: 크롬, 사파리, 오페라, 엣지
   */
  function textToSpeech(text) {
    console.log('textToSpeech', arguments);

    // speechSynthesis option
    // const u = new SpeechSynthesisUtterance();
    // u.text = 'Hello world';
    // u.lang = 'en-US';
    // u.rate = 1.2;
    // u.onend = function(event) {
    //   log('Finished in ' + event.elapsedTime + ' seconds.');
    // };
    // speechSynthesis.speak(u);

    // simple version
    speechSynthesis.speak(new SpeechSynthesisUtterance(text));
  }

  /**
   * 미사용
   * requestServer
   * key - AIzaSyDiMqfg8frtoZflA_2LPqfGdpjmgTMgWhg
   */
  function requestServer() {
    $.ajax({
      method: 'post',
      url: 'https://www.google.com/speech-api/v2/recognize?output=json&lang=en-us&key=AIzaSyDiMqfg8frtoZflA_2LPqfGdpjmgTMgWhg',
      data: '/examples/speech-recognition/hello.wav',
      contentType: 'audio/l16; rate=16000;', // 'audio/x-flac; rate=44100;',
      success: function(data) {

      },
      error: function(xhr) {

      }
    });
  }
  
  
  /* 비디오 */
  /**
   * getUserMedia 성공
   * @param stream
   */
  function success(stream) {
    videoEl.srcObject = stream;
  }

  /**
   * getUserMedia 실패
   * @param err
   */
  function error(err) {
    console.log('error', arguments);
  }

  /**
   * 비디오 이미지 캡쳐
   */
  function capture() {
    const context = canvasEl.getContext('2d');
    context.drawImage(videoEl, 0, 0, width, height);
    insertImage(canvasEl.toDataURL('image/png'));
  }
  
  

  /**
   * 캡쳐한 이미지 노출 함수
   * @param imageData
   */
  function insertImage(imageData) {
    $('#images').prepend("<img src=" + imageData + " />");
  }
  
  

  /**
   * 초기 바인딩
   */
  function initialize() {
	  
	canvasEl.width = width;
	canvasEl.height = height;

    $btnMic.click(start);
    $('#btn-tts').click(function() {
      const text = $('#final_span').text() || '전 음성 인식된 글자를 읽습니다.';
      textToSpeech(text);
    });
    
    $('#content1').hide();

    $('#btn-camera').click(function() {
      // getUserMedia(접근할 미디어, 성공 callback, 실패 callback);
      navigator.getUserMedia({ audio: false, video: true }, success, error);
    });

    $('#btn-capture').click(capture);
  }

  initialize();
});
