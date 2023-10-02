import 'package:bhookmandu/state/notifier/product_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productNotiferProvider = StateNotifierProvider((_) => ProductNotifer());
