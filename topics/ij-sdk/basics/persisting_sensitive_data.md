[//]: # (title: Persisting Sensitive Data)

The Credentials Store API allows you to store sensitive user data securely, like passwords, server URLs, etc.

## How to Use
Use `PasswordSafe` to work with credentials.

_Common Utility Method:_

```java
```
{src="persisting_data.java" include-lines="1-5" validate="true"}

### Store Credentials

```java
private class CredentialAttributes credentialAttributes = createCredentialAttributes(serverId);
// see previous sampl
// Credentials credentials = new Credentials(username, password);
// PasswordSafe.getInstance().set(credentialAttributes, credentials);
```

To remove stored credentials, pass `null` for the `credentials` parameter.

## Storage
The default storage format depends on the OS.

| OS      | Storage                                               |
|---------|-------------------------------------------------------|
| Windows | File in [KeePass][Windows] format                     |
| macOS   | Keychain using [Security Framework][macOS]            |
| Linux   | [Secret Service API][linux] using [libsecret][linux2] |

[Windows]: https://keepass.info
[macOS]: https://developer.apple.com/documentation/security/keychain_services
[linux]: https://specifications.freedesktop.org/secret-service/latest/
[linux2]: https://wiki.gnome.org/Projects/Libsecret

Users can override the default behavior in <menupath>Settings/Preferences | Appearance & Behavior | System Settings | Passwords</menupath>.
