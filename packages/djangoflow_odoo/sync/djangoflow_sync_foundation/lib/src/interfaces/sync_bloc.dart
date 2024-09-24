import 'package:flutter_bloc/flutter_bloc.dart';
import 'sync_repository.dart';
import 'sync_model.dart';
import '../utils/logger.dart';

// Events
abstract class ItemEvent {}

class LoadItems extends ItemEvent {}

class LoadItem extends ItemEvent {
  final int id;
  LoadItem(this.id);
}

class CreateItem<T extends SyncModel> extends ItemEvent {
  final T item;
  CreateItem(this.item);
}

class UpdateItem<T extends SyncModel> extends ItemEvent {
  final T item;
  UpdateItem(this.item);
}

class DeleteItem extends ItemEvent {
  final int id;
  DeleteItem(this.id);
}

class Sync extends ItemEvent {}

// States
abstract class ItemState {}

class ItemInitial extends ItemState {}

class ItemLoading extends ItemState {}

class ItemsLoaded<T extends SyncModel> extends ItemState {
  final List<T> items;

  ItemsLoaded(this.items);
}

class ItemLoaded<T extends SyncModel> extends ItemState {
  final T item;
  ItemLoaded(this.item);
}

class ItemOperationSuccess extends ItemState {}

class ItemOperationFailure extends ItemState {
  final String error;
  ItemOperationFailure(this.error);
}

class ItemSyncing extends ItemState {}

class ItemSyncSuccess extends ItemState {}

/// TODO try to use or combine with DataBloc, ListBloc
class SyncBloc<T extends SyncModel> extends Bloc<ItemEvent, ItemState> {
  final SyncRepository<T> repository;

  SyncBloc(this.repository) : super(ItemInitial()) {
    on<LoadItems>((event, emit) async {
      emit(ItemLoading());
      try {
        final items = await repository.getAll();

        emit(ItemsLoaded<T>(items));
      } catch (e, stackTrace) {
        _logError(e, stackTrace);
        emit(ItemOperationFailure(e.toString()));
      }
    });

    on<LoadItem>((event, emit) async {
      emit(ItemLoading());
      try {
        final item = await repository.getById(event.id);
        if (item != null) {
          emit(ItemLoaded<T>(item));
        } else {
          emit(ItemOperationFailure('Item not found'));
        }
      } catch (e, stackTrace) {
        _logError(e, stackTrace);
        emit(ItemOperationFailure(e.toString()));
      }
    });

    on<CreateItem<T>>((event, emit) async {
      emit(ItemLoading());
      try {
        await repository.create(event.item);
        emit(ItemOperationSuccess());
      } catch (e, stackTrace) {
        _logError(e, stackTrace);
        emit(ItemOperationFailure(e.toString()));
      }
    });

    on<UpdateItem<T>>((event, emit) async {
      emit(ItemLoading());
      try {
        await repository.update(event.item);
        emit(ItemOperationSuccess());
      } catch (e, stackTrace) {
        _logError(e, stackTrace);
        emit(ItemOperationFailure(e.toString()));
      }
    });

    on<DeleteItem>((event, emit) async {
      emit(ItemLoading());
      try {
        await repository.delete(event.id);
        emit(ItemOperationSuccess());
      } catch (e, stackTrace) {
        _logError(e, stackTrace);
        emit(ItemOperationFailure(e.toString()));
      }
    });

    on<Sync>((event, emit) async {
      emit(ItemSyncing());
      try {
        await repository.sync();
        emit(ItemSyncSuccess());
        add(LoadItems());
      } catch (e, stackTrace) {
        _logError(e.toString(), stackTrace);
        emit(ItemOperationFailure(e.toString()));
      }
    });
  }

  void _logError(Object error, StackTrace stackTrace) {
    logger.e('Error: ', error, stackTrace);
  }
}
