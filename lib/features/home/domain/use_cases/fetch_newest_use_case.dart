import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:bookly_app/features/home/domain/use_cases/featch_featured_books_use_case.dart';
import 'package:dartz/dartz.dart';

class FeatchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;
  FeatchNewestBooksUseCase(
     this.homeRepo,
  );

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param])async {
    return  await homeRepo.fetchNewestdBooks();

  }
}