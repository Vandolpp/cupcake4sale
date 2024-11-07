import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
import '/flutter_flow/flutter_flow_util.dart';

export 'database/database.dart';

String _kSupabaseUrl = 'https://dzjyjpgyzguzjwghqpiw.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6anlqcGd5emd1emp3Z2hxcGl3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjg5NDQ3NDQsImV4cCI6MjA0NDUyMDc0NH0.gGRSkDzHXyi9U7rsK-zb22YmJX0dB9JkPyLPHMVrNaY';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
