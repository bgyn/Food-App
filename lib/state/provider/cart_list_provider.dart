import 'package:bhookmandu/data/model/product_model.dart';
import 'package:bhookmandu/state/notifier/cart_list_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartListProvider = StateNotifierProvider<CartListNotifer,List<Product>>((_) => CartListNotifer());
