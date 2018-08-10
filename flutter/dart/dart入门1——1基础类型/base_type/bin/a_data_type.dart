void enter(){
  print(say('Bob', 'Howdy'));
  doStuff();
}

String say(String from, String msg,
    [String device = "carrier pigeon", String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  return result;
}

doStuff({List<int> list : const[1, 2, 3],
  Map<String, String> gifts : const{'first':  'paper',
    'second': 'cotton',
    'third':  'leather'}}) {
  print('list:  $list');
  print('gifts: $gifts');
}