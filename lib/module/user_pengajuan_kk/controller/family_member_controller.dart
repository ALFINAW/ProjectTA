

import 'package:flutter/foundation.dart';

import '../../../model/family_member.dart';

class FamilyMemberController  extends ChangeNotifier{
  List<FamilyMember> familyMembers = [];

  void addFamilyMember(FamilyMember member) {
    familyMembers.add(member);
    notifyListeners();
  }
}