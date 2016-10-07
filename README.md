# System V style daemon example

## Why this example is useful

The example uses System V /lib/init/init-d-script library.

The point is that the daemon program is not a binary. It is an interpreted shell script, that is able to start and manage another interpreted (Python) script.

## Why System V

The example is designed to be used under Ubuntu or Debian distributives. Modern Ubuntu and Debian releases use different init tools (Upstart for Ubuntu and systemd for Debian) but both of them still support traditional System V approach.

## Installation

Enter project directory and run from **root** user:

./install.sh

The daemon **test-daemon** will be installed and started.

## Management

System service management requires **root** privileges.

To find out daemon status:

service test-daemon status

To start daemon:

service test-daemon start

To stop daemon:

service test-daemon stop

If enabled, daemon will start automatically after system reboot.

To disable daemon:

update-rc.d test-daemon disable

(Automatical start up will be disabled, but we still can run the daemon manually.)

To enable daemon:

update-rc.d test-daemon enable

## Testing

When started, the daemon listens port 1234 at localhost. Enter project directory and run from ordinary user:

python test-client.py "Hello, World!"

Client connects to the daemon, send your request and print server response (test-daemon script just return greeting and echoes your request).

## Deinstallation

Enter project directory and run from **root** user:

./uninstall.sh
