import 'package:bhookmandu/state/notifier/product_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productNotifer = StateNotifierProvider((_) => ProductNotifer());