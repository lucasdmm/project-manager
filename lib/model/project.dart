import 'package:project_manager/model/member.dart';

class Project {
  final String _name;
  final String _discription;
  final DateTime _startDate;
  final DateTime _endDate;
  final double _price;
  final int _risk;
  final List<Member> _memberList;

  Project(this._name, this._discription, this._startDate, this._endDate,
      this._price, this._risk, this._memberList);
}
