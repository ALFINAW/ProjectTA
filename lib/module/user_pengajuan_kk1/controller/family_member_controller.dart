import '../../../model/family_member.dart';

class FamilyMemberController {
  List<FamilyMember> familyMembers = [];

  void addFamilyMember(FamilyMember member) {
    familyMembers.add(member);
  }

  void updateName(int index, String name) {
    familyMembers[index].name = name;
  }

  void updateGender(int index, String gender) {
    familyMembers[index].gender = gender;
  }

  void updateMaritalStatus(int index, String maritalStatus) {
    familyMembers[index].maritalStatus = maritalStatus;
  }

  void updatePlaceOfBirth(int index, String placeOfBirth) {
    familyMembers[index].placeOfBirth = placeOfBirth;
  }

  void updateDateOfBirth(int index, String dateOfBirth) {
    familyMembers[index].dateOfBirth = dateOfBirth;
  }
}
