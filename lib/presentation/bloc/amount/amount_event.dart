part of 'amount_bloc.dart';

abstract class AmountEvent extends Equatable {
  const AmountEvent();

  @override
  List<Object> get props => [];
}

class AmountAddEvent extends AmountEvent {
  final String amount;
  final String category;
  final String descrip;
  final String date;

  const AmountAddEvent(
      {required this.amount,
      required this.category,
      required this.descrip,
      required this.date});

  @override
  List<Object> get props => [amount, category, descrip, date];
}
