import 'package:mssql_connection/mssql_connection.dart';

Future<bool> connectToDatabase() async {
  MssqlConnection mssqlConnection = MssqlConnection.getInstance();
  try {
    bool isConnected = await mssqlConnection.connect(
      ip: '192.168.100.14',
      port: '1433',
      databaseName: 'BD_PL4_10',
      username: 'diubi:2023!BD!PL4_10',
      password: 'diubi:2023!BD!PL4_10',
      timeoutInSeconds: 15,
    );

    if (isConnected) {
      print('Connected to the database');
      return true;
    } else {
      print('Failed to connect to the database');
      return false;
    }
  } catch (e) {
    print('Error connecting to the database: $e');
    return false;
  }
}

void main() async {
  bool isConnected = await connectToDatabase();

  // Use the database connection status
  if (isConnected) {
    print('Connected to the database');
    // Perform actions when connected
  } else {
    // Handle connection failure
  }
}
