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
//= require_tree ../../../vendor/assets/javascripts/.
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
window.addEventListener("load", () => {
  let deviceNavigator = navigator.mediaDevices.getUserMedia({ audio: false, video: true });
  deviceNavigator.then((s) => {
    let target = document.getElementById("target");
    let ctracker = new clm.tracker();
    let result = document.getElementById("result");
    let context = result.getContext("2d");
    let update = () => {
      requestAnimationFrame(update);
      context.clearRect(0, 0, result.width, result.height);
      ctracker.draw(result);
    };
    target.src = window.URL.createObjectURL(s);
    ctracker.init(pModel);
    ctracker.start(target);
    update();
  });
});

