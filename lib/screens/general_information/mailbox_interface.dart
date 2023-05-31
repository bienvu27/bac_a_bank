
import 'package:flutter/material.dart';

import 'mailbox_model1.dart';

abstract class IMailboxInterface {
  Future<List<MailboxModel1>> getListCommonMailbox(BuildContext context);
  Future<List<MailboxModel1>> getListPrivateMailbox(BuildContext context);
  Future<void> viewDetail(String idMessage, int type, BuildContext context);
}