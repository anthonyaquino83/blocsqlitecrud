part of 'notes_cubit.dart';

abstract class NotesState extends Equatable {
  const NotesState();
}

// estado da tela inicial
class NotesInitial extends NotesState {
  const NotesInitial();

  @override
  List<Object?> get props => [];
}

// aguardando operacao ser realizada
class NotesLoading extends NotesState {
  const NotesLoading();

  @override
  List<Object?> get props => [];
}

// lista de notas carregada
class NotesLoaded extends NotesState {
  const NotesLoaded({
    this.notes,
  });

  final List<Note>? notes;

  NotesLoaded copyWith({
    List<Note>? notes,
  }) {
    return NotesLoaded(
      notes: notes ?? this.notes,
    );
  }

  @override
  List<Object?> get props => [notes];
}

// falha ao realizar operacao com notas
class NotesFailure extends NotesState {
  const NotesFailure();

  @override
  List<Object?> get props => [];
}

// campos do formulario aguardando validacao com sucesso
class NotesValidating extends NotesState {
  const NotesValidating({
    this.note,
    this.tituloMessage,
    this.conteudoMessage,
  });

  final Note? note;
  final String? tituloMessage;
  final String? conteudoMessage;

  NotesValidating copyWith({
    Note? note,
    String? tituloMessage,
    String? conteudoMessage,
  }) {
    return NotesValidating(
      note: note ?? this.note,
      tituloMessage: tituloMessage ?? this.tituloMessage,
      conteudoMessage: conteudoMessage ?? this.conteudoMessage,
    );
  }

  @override
  List<Object?> get props => [tituloMessage, conteudoMessage];
}

// campos do formulario validados com sucesso
class NotesValidated extends NotesState {
  const NotesValidated({
    this.note,
  });

  final Note? note;

  NotesValidated copyWith({
    Note? note,
  }) {
    return NotesValidated(
      note: note ?? this.note,
    );
  }

  @override
  List<Object?> get props => [note];
}

// operacao realizada com sucesso
class NotesSuccess extends NotesState {
  const NotesSuccess();

  @override
  List<Object?> get props => [];
}
