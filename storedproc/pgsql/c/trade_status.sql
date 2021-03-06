/*
 * This file is released under the terms of the Artistic License.  Please see
 * the file LICENSE, included in this package, for details.
 *
 * Copyright (C) 2007 Mark Wong
 */

CREATE OR REPLACE FUNCTION TradeStatusFrame1 (
		IN acct_id BIGINT,
		OUT broker_name VARCHAR(100),
		OUT charge NUMERIC(10, 2)[],
		OUT cust_f_name VARCHAR(30),
		OUT cust_l_name VARCHAR(30),
		OUT ex_name VARCHAR(100)[],
		OUT exec_name VARCHAR(64)[],
		OUT s_name VARCHAR(70)[],
		OUT status INTEGER,
		OUT st_name VARCHAR(10)[],
		OUT symbol VARCHAR(15)[],
		OUT trade_dts TIMESTAMP[],
		OUT trade_id BIGINT[],
		OUT trade_qty INTEGER[],
		OUT type_name VARCHAR(12)[])
RETURNS SETOF record AS '$libdir/trade_status', 'TradeStatusFrame1'
LANGUAGE C IMMUTABLE STRICT;
