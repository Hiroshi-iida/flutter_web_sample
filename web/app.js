
function testFunc1() {
  alert('test.js;')
  var myLiffId = '1657171925-yd6kZD68'
  liff.init({
    liffId: myLiffId,
    withLoginOnExternalBrowser: true,
  }).then(() => {
    location.replace("https://line.me/"+myLiffId+"/");
  });
//  return 'test.js'
}
