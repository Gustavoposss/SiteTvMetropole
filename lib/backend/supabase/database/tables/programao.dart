import '../database.dart';

class ProgramaoTable extends SupabaseTable<ProgramaoRow> {
  @override
  String get tableName => 'Programação';

  @override
  ProgramaoRow createRow(Map<String, dynamic> data) => ProgramaoRow(data);
}

class ProgramaoRow extends SupabaseDataRow {
  ProgramaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProgramaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  PostgresTime? get horarioInicio => getField<PostgresTime>('horario_inicio');
  set horarioInicio(PostgresTime? value) =>
      setField<PostgresTime>('horario_inicio', value);

  PostgresTime? get horarioFim => getField<PostgresTime>('horario_fim');
  set horarioFim(PostgresTime? value) =>
      setField<PostgresTime>('horario_fim', value);

  List<String> get diasSemana => getListField<String>('dias_semana')!;
  set diasSemana(List<String> value) =>
      setListField<String>('dias_semana', value);
}
