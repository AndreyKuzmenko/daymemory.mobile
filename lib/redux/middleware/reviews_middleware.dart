import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/data/dtos/review_category_dto.dart';
import 'package:daymemory/data/dtos/review_item_dto.dart';
import 'package:daymemory/redux/action/reviews_action.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/device_service/device_service.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/permission/permission_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/settings_service/storage_review_settings.dart';
import 'package:daymemory/services/storage/interfaces/interface_note_service.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:jiffy/jiffy.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReviewsMiddleware implements MiddlewareClass<AppState> {
  final INoteService noteRepository;
  final IDialogService dialogService;
  final IPermissionService permissionService;
  final IDeviceService deviceFeedbackService;
  final IContextService contextService;
  final ISettingsService settingsService;

  AppLocalizations? get _locale => contextService.locale;

  ReviewsMiddleware({
    required this.noteRepository,
    required this.dialogService,
    required this.permissionService,
    required this.deviceFeedbackService,
    required this.contextService,
    required this.settingsService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is LoadReviewsAction) {
      await _loadReviews(action, store.state.settingsState.reviewSettings, store.dispatch);
    }
  }

  String _getLocalizationYears(int itemsCount) {
    var lastDigit = itemsCount % 10;

    if (itemsCount >= 10 && itemsCount <= 20) {
      return "$itemsCount ${_locale!.review_many_years}";
    }

    if (itemsCount > 10) {
      return "$itemsCount ${_locale!.review_many_years}";
    }

    if (lastDigit == 1) {
      return "$itemsCount ${_locale!.review_one_year}";
    }

    if (lastDigit >= 2 && lastDigit <= 4) {
      return "$itemsCount ${_locale!.review_two_four_years}";
    }

    return "$itemsCount ${_locale!.review_many_years}";
  }

  Future<void> _loadReviews(action, StorageReviewSettings reviewSettings, Function(dynamic action) dispatch) async {
    dispatch(const ReviewsIsLoadingAction(isLoading: true));

    var result = <ReviewCategoryDto>[];

    if (reviewSettings.isYearlyEnabled) {
      var yearlyCategories = await _getYearlyReviews(DateTime.now().toUtc().day, DateTime.now().toUtc().month);
      result.addAll(yearlyCategories);
    }
    if (reviewSettings.is6MonthsEnabled) {
      var notes = await noteRepository.fetchNotesByDate(Jiffy().add(months: -6).dateTime);
      if (notes.isNotEmpty) {
        result.add(ReviewCategoryDto(id: const Uuid().v4(), notes: notes, title: _locale!.review_half_year));
      }
    }
    if (reviewSettings.is3MonthsEnabled) {
      var notes = await noteRepository.fetchNotesByDate(Jiffy().add(months: -3).dateTime);
      if (notes.isNotEmpty) {
        result.add(ReviewCategoryDto(id: const Uuid().v4(), notes: notes, title: _locale!.review_three_months));
      }
    }
    if (reviewSettings.is1MonthEnabled) {
      var notes = await noteRepository.fetchNotesByDate(Jiffy().add(months: -1).dateTime);
      if (notes.isNotEmpty) {
        result.add(ReviewCategoryDto(id: const Uuid().v4(), notes: notes, title: _locale!.review_month));
      }
    }
    if (reviewSettings.is10DaysEnabled) {
      var notes = await noteRepository.fetchNotesByDate(Jiffy().add(days: -10).dateTime);
      if (notes.isNotEmpty) {
        result.add(ReviewCategoryDto(id: const Uuid().v4(), notes: notes, title: _locale!.review_10_days));
      }
    }
    if (reviewSettings.is7DaysEnabled) {
      var notes = await noteRepository.fetchNotesByDate(Jiffy().add(days: -7).dateTime);
      if (notes.isNotEmpty) {
        result.add(ReviewCategoryDto(id: const Uuid().v4(), notes: notes, title: _locale!.review_7_days));
      }
    }

    dispatch(ReviewsLoadedAction(result));
    dispatch(const ReviewsIsLoadingAction(isLoading: false));
  }

  Future<List<ReviewCategoryDto>> _getYearlyReviews(int day, int month) async {
    var notes = await noteRepository.fetchNotesByDayAndMonth(day, month);
    var result = <ReviewCategoryDto>[];
    var now = DateTime.now();
    for (var item in notes.where((element) => element.date.year != now.year)) {
      //var reviewItems = _createReviewItems([item], _getLocalizationYears(now.year - item.date.year));
      var reviewCategory = ReviewCategoryDto(
        id: const Uuid().v4(),
        title: _getLocalizationYears(now.year - item.date.year),
        notes: [item],
      );
      result.add(reviewCategory);
    }

    return result;
  }

  // String _getLocalizationYears(int itemsCount) {
  //   var lastDigit = itemsCount % 10;

  //   if (itemsCount >= 10 && itemsCount <= 20) {
  //     return "$itemsCount ${_locale!.review_many_years}";
  //   }

  //   if (itemsCount > 10) {
  //     return "$itemsCount ${_locale!.review_many_years}";
  //   }

  //   if (lastDigit == 1) {
  //     return "$itemsCount ${_locale!.review_one_year}";
  //   }

  //   if (lastDigit >= 2 && lastDigit <= 4) {
  //     return "$itemsCount ${_locale!.review_two_four_years}";
  //   }

  //   return "$itemsCount ${_locale!.review_many_years}";
  // }

  // Future<void> _loadReviews(action, StorageReviewSettings reviewSettings, Function(dynamic action) dispatch) async {
  //   dispatch(const ReviewsIsLoadingAction(isLoading: true));

  //   var result = <ReviewItemDto>[];

  //   if (reviewSettings.isYearlyEnabled) {
  //     result.addAll(await _getYearlyReviews(DateTime.now().toUtc().day, DateTime.now().toUtc().month));
  //   }
  //   if (reviewSettings.is6MonthsEnabled) {
  //     result.addAll(await _getReviews(Jiffy().add(months: -6).dateTime, _locale!.review_half_year));
  //   }
  //   if (reviewSettings.is3MonthsEnabled) {
  //     result.addAll(await _getReviews(Jiffy().add(months: -3).dateTime, _locale!.review_three_months));
  //   }
  //   if (reviewSettings.is1MonthEnabled) {
  //     result.addAll(await _getReviews(Jiffy().add(months: -1).dateTime, _locale!.review_month));
  //   }
  //   if (reviewSettings.is10DaysEnabled) {
  //     result.addAll(await _getReviews(Jiffy().add(days: -10).dateTime, _locale!.review_10_days));
  //   }
  //   if (reviewSettings.is7DaysEnabled) {
  //     result.addAll(await _getReviews(Jiffy().add(days: -7).dateTime, _locale!.review_7_days));
  //   }

  //   dispatch(ReviewsLoadedAction(result));
  //   dispatch(const ReviewsIsLoadingAction(isLoading: false));
  // }

  // Future<List<ReviewItemDto>> _getYearlyReviews(int day, int month) async {
  //   var notes = await noteRepository.fetchNotesByDayAndMonth(day, month);
  //   var result = <ReviewItemDto>[];
  //   var now = DateTime.now();
  //   for (var item in notes.where((element) => element.date.year != now.year)) {
  //     var reviewItems = _createReviewItems([item], _getLocalizationYears(now.year - item.date.year));
  //     result.addAll(reviewItems);
  //   }

  //   return result;
  // }

  // Future<List<ReviewItemDto>> _getReviews(DateTime date, String title) async {
  //   var notes = await noteRepository.fetchNotesByDate(date);
  //   var reviewItems = _createReviewItems(notes, title);
  //   return reviewItems;
  // }

  // List<ReviewItemDto> _createReviewItems(List<NoteDto> notes, String title) {
  //   var result = <ReviewItemDto>[];
  //   for (var note in notes) {
  //     if (note.mediaFiles.isNotEmpty) {
  //       for (var image in note.mediaFiles) {
  //         var review = ReviewItemDto(
  //           id: const Uuid().v4(),
  //           date: note.date,
  //           text: note.text,
  //           title: title,
  //           file: _convertMediaFile(image),
  //           location: note.location,
  //         );
  //         result.add(review);
  //       }
  //     } else {
  //       var review = ReviewItemDto(
  //         id: const Uuid().v4(),
  //         date: note.date,
  //         text: note.text,
  //         title: title,
  //         location: note.location,
  //       );
  //       result.add(review);
  //     }
  //   }
  //   return result;
  // }

  // FileViewModel _convertMediaFile(FileDto file) {
  //   return FileViewModel((b) => b
  //     ..id = file.id
  //     ..fileType = file.fileType
  //     ..height = file.height
  //     ..width = file.width
  //     ..filePath = file.filePath);
  // }
}
