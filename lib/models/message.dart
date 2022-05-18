import '../constants/enums.dart';

class Message {
  final String text;
  final String date;
  final MessageStatus messageStatus;
  final MessageType messageType;

  Message({
    required this.text,
    required this.date,
    required this.messageStatus,
    required this.messageType,
  });
}

final List<Message> sentMessages = [
  Message(
    text: 'Hello',
    date: '4:20 AM',
    messageStatus: MessageStatus.seen,
    messageType: MessageType.received,
  ),
  Message(
    text: 'How are you?',
    date: '4:21 AM',
    messageStatus: MessageStatus.delivered,
    messageType: MessageType.sent,
  ),
  Message(
    text: 'Can you do me a favor?',
    date: '4:22 AM',
    messageStatus: MessageStatus.sent,
    messageType: MessageType.received,
  ),
  Message(
    text: "I really need your help so please answer! I have been stuack with a bug for over a month now and I don't seem to be able to solve it. So Urgent help is needed.",
    date: '4:23 AM',
    messageStatus: MessageStatus.sent,
    messageType: MessageType.received,
  ),
];

final List<Message> receivedMessages = [];
