// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';

class FeatchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;
  FeatchFeaturedBooksUseCase(
     this.homeRepo,
  );

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param])async {
    return  await homeRepo.fetchFeaturedBooks();

  }
}



class NoParam {}
