import '../constants/enums.dart';

class Call {
  final String userName;
  final String date;
  final String imageUrl;
  final CallType callType;
  final CallQuality callQuality;

  Call({
    required this.userName,
    required this.date,
    required this.imageUrl,
    required this.callType,
    required this.callQuality,
  });
}

final calls = [
  Call(
    userName: 'Albert Dera',
    date: 'April 24, 6:41 AM',
    imageUrl: 'assets/images/photo1.jpg',
    callType: CallType.audioCall,
    callQuality: CallQuality.incoming,
  ),
  Call(
    userName: 'Sekandar Hayat',
    date: 'March 30, 8:59 AM',
    imageUrl: 'assets/images/photo8.jpg',
    callType: CallType.audioCall,
    callQuality: CallQuality.incomingMissed,
  ),
  Call(
    userName: 'Warren Wong',
    date: 'March 30, 8:54 AM',
    imageUrl: 'assets/images/photo9.jpg',
    callType: CallType.videoCall,
    callQuality: CallQuality.outgoingMissed,
  ),
  Call(
    userName: 'Foto Sushi',
    date: '(7) February 12, 9:21 AM',
    imageUrl: 'assets/images/photo3.jpg',
    callType: CallType.audioCall,
    callQuality: CallQuality.incomingMissed,
  ),
  Call(
    userName: 'Ayo Ogunseinde',
    date: '12/30/21, 7:32 AM',
    imageUrl: 'assets/images/photo2.jpg',
    callType: CallType.videoCall,
    callQuality: CallQuality.outgoing
  ),
  Call(
    userName: 'Seth Doyle',
    date: '11/25/21, 8:26 PM',
    imageUrl: 'assets/images/photo7.jpg',
    callType: CallType.videoCall,
    callQuality: CallQuality.incoming,
  ),
];
