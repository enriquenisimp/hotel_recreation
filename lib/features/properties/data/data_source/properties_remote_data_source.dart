import 'package:hotel_recreation/features/properties/data/model/properties_list_wrapper_model.dart';

abstract class PropertiesRemoteDataSource{
 Future<PropertiesListWrapperModel> getPropertiesListRemote(Map<String, dynamic> parameters);
  getPropertyDetailRemote();
}