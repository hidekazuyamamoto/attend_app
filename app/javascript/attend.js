
function attend(){
// 現在の位置情報取得を実施
if (navigator.geolocation) {
  navigator.geolocation.getCurrentPosition(
  // 位置情報取得成功時
  function (pos) {
  let latitude = document.getElementById("latitude")
  let longitude = document.getElementById("longitude")
  latitude.value = pos.coords.latitude;
  longitude.value = pos.coords.longitude;
  });
} 
else {
  window.alert("このブラウザはGeolocationに対応していません。");
}
}

window.addEventListener('load', attend)