import java.security.Permission;

/**
 * This class prevents the user form using System.exit(0)
 * from terminating the program abnormally.
 */
class DoNotTerminate {
  public static class ExitTrappedException extends SecurityException {
  }

  public static void forbidExit() {
    final SecurityManager securityManager = new SecurityManager() {
      @Override
      public void checkPermission(Permission permission) {
        if (permission.getName().contains("exitVM")) {
          throw new ExitTrappedException();
        }
      }
    };
    System.setSecurityManager(securityManager);
  }
}