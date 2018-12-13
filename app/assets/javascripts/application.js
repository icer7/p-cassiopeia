// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
// window.addEventListener("load", () => {
//   let deviceNavigator = navigator.mediaDevices.getUserMedia({ audio: false, video: true });
//   deviceNavigator.then((s) => {
//     let input = document.getElementById("input");
//     let canvas = document.getElementById("canvas");
//     let context = canvas.getContext("2d");
//     input.src = window.URL.createObjectURL(s);
//   });
// });
function startVideo() {
  Promise.resolve()
    .then(function () {
      return navigator.mediaDevices.enumerateDevices();
    })
    .then(function (mediaDeviceInfoList) {
      let videoDevices = mediaDeviceInfoList.filter(function (deviceInfo) {
        return deviceInfo.kind == 'videoinput';
      });
      return navigator.mediaDevices.getUserMedia({
        audio: false,
        video: {
          deviceId: videoDevices[0].deviceId
        }
      });
    })
    .then(function (mediaStream) {
      videoStreamInUse = mediaStream;
      document.querySelector('video').src = window.URL.createObjectURL(mediaStream);
    })
}

function stopVideo() {
  videoStreamInUse.getVideoTracks()[0].stop();
}

function snapshot() {
  let videoElement = document.querySelector('video');
  let canvasElement = document.querySelector('canvas');
  let context = canvasElement.getContext('2d');
  context.drawImage(videoElement, 0, 0, videoElement.width, videoElement.height);
  document.querySelector('img').src = canvasElement.toDataURL('image/webp');
}

function reset() {
  document.querySelector('img').src = 0;
}

function submit() {
  let url = location.href;
  location.href = url + "submit_pages/home";
}
