import 'package:bloc_hesap/data/repo/matamatik_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//bu cubitin görevi işlem yaptımak ve ara yüze göndermek işlevler için repo açıyoruz
//burda yöetiçi olucak

class AnasayfaCubiti extends Cubit<int> {
  //gönderceği bir veri yoksa void
  AnasayfaCubiti() : super(0);
  var matRepo = MatamatikRepos();
  void toplamayap(String alinaSayi1, String alinansayi2) {
    emit(matRepo.toplamayap(alinaSayi1, alinansayi2)); //veri gönderir
  }

  void carp(String alinaSayi1, String alinansayi2) {
    emit(matRepo.carpmayap(alinaSayi1, alinansayi2)); //veri gönderir
  }
}
