/*
 * This file is released under the terms of the Artistic License.  Please see
 * the file LICENSE, included in this package, for details.
 *
 * Copyright (C) 2007 Mark Wong
 */

CREATE OR REPLACE FUNCTION DataMaintenanceFrame1 (
		IN acct_id IDENT_T,
		IN c_id IDENT_T,
		IN co_id IDENT_T,
		IN day_of_month INTEGER,
		IN symbol VARCHAR(15),
		IN table_name VARCHAR,
		IN tx_id VARCHAR(4),
		IN vol_incr INTEGER,
		OUT status INTEGER)
RETURNS INTEGER AS '$libdir/data_maintenance', 'DataMaintenanceFrame1'
LANGUAGE C IMMUTABLE STRICT;
