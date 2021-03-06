# This file is a part of bwa (DNAnexus platform app).
# Copyright (C) 2013 DNAnexus, Inc.
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any later
# version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# this program. If not, see <http://www.gnu.org/licenses/>.

all:
	$(MAKE) -C bwa
	$(MAKE) -C pixz
	cp bwa/bwa resources/usr/bin/bwa
	cp pixz/pixz resources/usr/bin/pixz

clean:
	$(MAKE) -C bwa clean
	$(MAKE) -C pixz clean
	rm -f resources/usr/bin/bwa resources/usr/bin/pixz

.PHONY: all clean
