class MessageChat {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const MessageChat({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });

  add(MessageChat message) {}
}
