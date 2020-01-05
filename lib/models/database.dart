import 'api.dart';

/// Database class
class Database {
  /// API class
  API _api;

  /// Database
  Database(API api) {
    _api = api;
  }

  @override
  String toString() {
    return 'Database';
  }

  /// Returns list of chairs on a specified faculty.
  ///
  /// Params:
  ///
  /// `faculty_id` *(integer)* id of the faculty to get chairs from
  ///
  /// `offset` *(integer)* offset required to get a certain subset of chairs
  ///
  /// `count` *(integer)* amount of chairs to get, default: 100, max: 10000
  Future<Map> getChairs([Map<String, dynamic> params]) async {
    return _api.request('database.getChairs', {
      ...?params,
    });
  }

  /// Returns a list of cities.
  ///
  /// Params:
  ///
  /// `country_id` *(integer)* Country ID.
  ///
  /// `region_id` *(integer)* Region ID.
  ///
  /// `q` *(string)* Search query.
  ///
  /// `need_all` *(boolean)* '1' — to return all cities in the country, '0' — to return major cities in the country (default),
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of cities.
  ///
  /// `count` *(integer)* Number of cities to return., default: 100, max: 1000
  Future<Map> getCities([Map<String, dynamic> params]) async {
    return _api.request('database.getCities', {
      ...?params,
    });
  }

  /// Returns information about cities by their IDs.
  ///
  /// Params:
  ///
  /// `city_ids` *(array)* City IDs.
  Future<Map> getCitiesById([Map<String, dynamic> params]) async {
    return _api.request('database.getCitiesById', {
      ...?params,
    });
  }

  /// Returns a list of countries.
  ///
  /// Params:
  ///
  /// `need_all` *(boolean)* '1' — to return a full list of all countries, '0' — to return a list of countries near the current user's country (default).
  ///
  /// `code` *(string)* Country codes in [ISO 3166-1 alpha-2](https://vk.com/dev/country_codes) standard.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of countries.
  ///
  /// `count` *(integer)* Number of countries to return., default: 100, max: 1000
  Future<Map> getCountries([Map<String, dynamic> params]) async {
    return _api.request('database.getCountries', {
      ...?params,
    });
  }

  /// Returns information about countries by their IDs.
  ///
  /// Params:
  ///
  /// `country_ids` *(array)* Country IDs.
  Future<Map> getCountriesById([Map<String, dynamic> params]) async {
    return _api.request('database.getCountriesById', {
      ...?params,
    });
  }

  /// Returns a list of faculties (i.e., university departments).
  ///
  /// Params:
  ///
  /// `university_id` *(integer)* University ID.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of faculties.
  ///
  /// `count` *(integer)* Number of faculties to return., default: 100, max: 10000
  Future<Map> getFaculties([Map<String, dynamic> params]) async {
    return _api.request('database.getFaculties', {
      ...?params,
    });
  }

  /// Get metro stations by city
  ///
  /// Params:
  ///
  /// `city_id` *(integer)*
  ///
  /// `offset` *(integer)*
  ///
  /// `count` *(integer)*, default: 100, max: 500
  ///
  /// `extended` *(boolean)*
  Future<Map> getMetroStations([Map<String, dynamic> params]) async {
    return _api.request('database.getMetroStations', {
      ...?params,
    });
  }

  /// Get metro station by his id
  ///
  /// Params:
  ///
  /// `station_ids` *(array)*
  Future<Map> getMetroStationsById([Map<String, dynamic> params]) async {
    return _api.request('database.getMetroStationsById', {
      ...?params,
    });
  }

  /// Returns a list of regions.
  ///
  /// Params:
  ///
  /// `country_id` *(integer)* Country ID, received in [database.getCountries](https://vk.com/dev/database.getCountries) method.
  ///
  /// `q` *(string)* Search query.
  ///
  /// `offset` *(integer)* Offset needed to return specific subset of regions.
  ///
  /// `count` *(integer)* Number of regions to return., default: 100, max: 1000
  Future<Map> getRegions([Map<String, dynamic> params]) async {
    return _api.request('database.getRegions', {
      ...?params,
    });
  }

  /// Returns a list of school classes specified for the country.
  ///
  /// Params:
  ///
  /// `country_id` *(integer)* Country ID.
  Future<Map> getSchoolClasses([Map<String, dynamic> params]) async {
    return _api.request('database.getSchoolClasses', {
      ...?params,
    });
  }

  /// Returns a list of schools.
  ///
  /// Params:
  ///
  /// `q` *(string)* Search query.
  ///
  /// `city_id` *(integer)* City ID.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of schools.
  ///
  /// `count` *(integer)* Number of schools to return., default: 100, max: 10000
  Future<Map> getSchools([Map<String, dynamic> params]) async {
    return _api.request('database.getSchools', {
      ...?params,
    });
  }

  /// Returns a list of higher education institutions.
  ///
  /// Params:
  ///
  /// `q` *(string)* Search query.
  ///
  /// `country_id` *(integer)* Country ID.
  ///
  /// `city_id` *(integer)* City ID.
  ///
  /// `offset` *(integer)* Offset needed to return a specific subset of universities.
  ///
  /// `count` *(integer)* Number of universities to return., default: 100, max: 10000
  Future<Map> getUniversities([Map<String, dynamic> params]) async {
    return _api.request('database.getUniversities', {
      ...?params,
    });
  }
}
