import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_backwards_compatibility_server/serverpod_auth_backwards_compatibility_server.dart';
import 'package:serverpod_auth_backwards_compatibility_server/src/business/legacy_email_password_validator.dart';
import 'package:serverpod_auth_backwards_compatibility_server/src/generated/protocol.dart';
import 'package:serverpod_auth_email_account_server/serverpod_auth_email_account_server.dart'
    as new_email_account;

/// Collections of helper functions to work with legacy authentication data.
abstract final class AuthBackwardsCompatibility {
  /// The configuration used for the backwards compatibility.
  ///
  /// Should match the previous `AuthConfig`.
  static var config = AuthBackwardsCompatibilityConfig();

  /// Set a legacy `serverpod_auth` `EmailAuth` "hash" as a fallback password
  /// for a `serverpod_auth_email_account` `EmailAccount`.
  ///
  /// In case the latter doesn't have a password set, it can look up the
  /// previous one as a fallback here using [isLegacyPasswordValid].
  static Future<void> storeLegacyPassword(
    final Session session, {
    required final UuidValue emailAccountId,

    /// The legacy password hash
    required final String passwordHash,
    final Transaction? transaction,
  }) async {
    await LegacyEmailPassword.db.insertRow(
      session,
      LegacyEmailPassword(
        emailAccountId: emailAccountId,
        hash: passwordHash,
      ),
      transaction: transaction,
    );
  }

  /// Checks whether the password was valid for the email account in the legacy
  /// `serverpod_auth` module.
  static Future<bool> isLegacyPasswordValid(
    final Session session, {
    required final UuidValue emailAccountId,
    required final String email,
    required final String password,
    final Transaction? transaction,
  }) async {
    final legacyPassword = await LegacyEmailPassword.db.findFirstRow(
      session,
      where: (final t) => t.emailAccountId.equals(emailAccountId),
      transaction: transaction,
    );
    if (legacyPassword == null) {
      return false;
    }

    return legacyEmailPasswordValidator(
      session,
      email: email,
      password: password,
      passwordHash: legacyPassword.hash,
    );
  }

  /// Checks whether an account for the given [email] exists without a password,
  /// and if not it attempts to import the legacy password if its valid.
  static Future<void> importLegacyPasswordIfNeeded(
    final Session session, {
    required final String email,
    required final String password,
    final Transaction? transaction,
  }) async {
    await DatabaseUtil.runInTransactionOrSavepoint(
      session.db,
      transaction,
      (final transaction) async {
        final emailAccountInfo =
            await new_email_account.EmailAccounts.admin.findAccount(
          session,
          email: email,
          transaction: transaction,
        );

        if (emailAccountInfo == null || emailAccountInfo.hasPassword) {
          return;
        }

        final passwordIsValid = await isLegacyPasswordValid(
          session,
          email: email,
          emailAccountId: emailAccountInfo.emailAccountId,
          password: password,
          transaction: transaction,
        );

        if (!passwordIsValid) {
          // A login will of course fail in the new auth provider, but we don't want
          // to preempt any throttling or logging, and thus let it continue.
          return;
        }

        await clearLegacyPassword(
          session,
          emailAccountId: emailAccountInfo.emailAccountId,
        );

        // The account was already migrated without a password, and now we need to
        // set the password to the correct one from the old system.
        await new_email_account.EmailAccounts.admin.setPassword(
          session,
          email: email,
          password: password,
          transaction: transaction,
        );
      },
    );
  }

  /// Removes the legacy password from the database.
  static Future<void> clearLegacyPassword(
    final Session session, {
    required final UuidValue emailAccountId,
    final Transaction? transaction,
  }) async {
    await LegacyEmailPassword.db.deleteWhere(
      session,
      where: (final t) => t.emailAccountId.equals(emailAccountId),
      transaction: transaction,
    );
  }

  /// Imports a legacy session from `serverpod_auth` mapped to the new
  ///  `AuthUser`.
  ///
  /// This can later be checked using [authenticationHandler].
  static Future<void> storeLegacySession(
    final Session session, {
    required final UuidValue authUserId,

    /// The legacy session key hash
    required final String sessionKeyHash,
    required final String method,
    required final Iterable<String> scopeNames,
    final Transaction? transaction,
  }) async {
    await LegacySession.db.insertRow(
      session,
      LegacySession(
        authUserId: authUserId,
        hash: sessionKeyHash,
        method: method,
        scopeNames: scopeNames.toSet(),
      ),
      transaction: transaction,
    );
  }

  /// Imports a legacy (external) "user identifier".
  static Future<void> storeLegacyExternalUserIdentifier(
    final Session session, {
    required final UuidValue authUserId,
    required final String userIdentifier,
    final Transaction? transaction,
  }) async {
    await LegacyExternalUserIdentifier.db.insertRow(
      session,
      LegacyExternalUserIdentifier(
          authUserId: authUserId, userIdentifier: userIdentifier),
      transaction: transaction,
    );
  }

  /// Looks up a legacy (external) "user identifier".
  static Future<UuidValue?> lookUpLegacyExternalUserIdentifier(
    final Session session, {
    required final String userIdentifier,
    final Transaction? transaction,
  }) async {
    final row = await LegacyExternalUserIdentifier.db.findFirstRow(
      session,
      where: (final t) => t.userIdentifier.equals(userIdentifier),
      transaction: transaction,
    );

    return row?.authUserId;
  }
}
