import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:djangoflow_sync_foundation/src/interfaces/sync_repository.dart';
import 'package:djangoflow_sync_foundation/src/interfaces/sync_model.dart';
import 'package:djangoflow_sync_foundation/src/utils/logger.dart';

// Events
abstract class ItemEvent {}

class LoadItems extends ItemEvent {}

class LoadItem extends ItemEvent {
  LoadItem(this.id);
  final int id;
}

class CreateItem<T extends SyncModel> extends ItemEvent {
  CreateItem(this.item);
  final T item;
}

class UpdateItem<T extends SyncModel> extends ItemEvent {
  UpdateItem(this.item);
  final T item;
}

class DeleteItem extends ItemEvent {
  DeleteItem(this.id);
  final int id;
}

class Sync extends ItemEvent {}

// States
abstract class ItemState {}

class ItemInitial extends ItemState {}

class ItemLoading extends ItemState {}

class ItemsLoaded<T extends SyncModel> extends ItemState {
  ItemsLoaded(this.items);
  final List<T> items;
}

class ItemLoaded<T extends SyncModel> extends ItemState {
  ItemLoaded(this.item);
  final T item;
}

class ItemOperationSuccess extends ItemState {}

class ItemOperationFailure extends ItemState {
  ItemOperationFailure(this.error);
  final String error;
}

class ItemSyncing extends ItemState {}

class ItemSyncSuccess extends ItemState {}

/// TODO try to use or combine with DataBloc, ListBloc
class SyncBloc<T extends SyncModel> extends Bloc<ItemEvent, ItemState> {
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
  final SyncRepository<T> repository;

  void _logError(Object error, StackTrace stackTrace) {
    logger.e('Error: ', error, stackTrace);
  }
}
