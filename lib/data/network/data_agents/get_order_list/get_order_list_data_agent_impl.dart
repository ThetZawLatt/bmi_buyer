

import 'package:bmi_buyer/data/network/data_agents/get_order_list/get_order_list_data_agent.dart';
import 'package:bmi_buyer/data/response_vo/order_list_response_vo.dart';
import 'package:dio/dio.dart';

import '../../../../const/api.dart';
import '../../../api/api_service.dart';

class GetOrderListDataAgentImpl extends GetOrderListDataAgent {
  late ApiService _api;

  static final GetOrderListDataAgentImpl _singleton =
  GetOrderListDataAgentImpl._internal();

  factory GetOrderListDataAgentImpl() {
    return _singleton;
  }

  GetOrderListDataAgentImpl._internal() {
    final dio = Dio(BaseOptions(headers: <String, String>{
      'Content-Type': contentType,
      'Authorization': "Bearer $authorizationToken"
    }));
    _api = ApiService(dio,baseUrl: baseURL);
  }

  @override
  Future<OrderListResponseVo> getOrderList(int buyerID) {
    return _api.getProductOrderList(buyerID);
  }








}