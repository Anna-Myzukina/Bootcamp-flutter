abstract class ShapeInterface {
  area();
}

class MySQLConnection implements DBConnectionInterface {
  connect() {
    return "Database connection";
  }
}

class PasswordReminder {
  DBConnectionInterface dbConnection;

  PasswordReminder(this.dbConnection);
}
