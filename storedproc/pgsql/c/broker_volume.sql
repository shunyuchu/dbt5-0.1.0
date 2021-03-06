/*
 * This file is released under the terms of the Artistic License.  Please see
 * the file LICENSE, included in this package, for details.
 *
 * Copyright (C) 2007 Mark Wong
 */

CREATE OR REPLACE FUNCTION BrokerVolumeFrame1 (
		IN broker_list VARCHAR[],
		IN sector_name VARCHAR,
		OUT broker_name VARCHAR(100)[],
		OUT list_len INTEGER,
		OUT status INTEGER,
		OUT volume NUMERIC(14, 2)[])
RETURNS SETOF record AS '$libdir/broker_volume', 'BrokerVolumeFrame1'
LANGUAGE C IMMUTABLE STRICT;
