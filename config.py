"""
Config part.
"""

import os


QDIR = "{home}/bin/Copy-Queue/queue".format(home=os.path.expanduser('~'))
LOCK = "{qdir}/.lock".format(qdir=QDIR)
LOGFILE = "{qdir}/daemon.log".format(qdir=QDIR)
DAEMON = "{home}/bin/Copy-Queue/cpq_mvq_daemon.py".format(home=os.path.expanduser('~'))
