/*
 * This file is released under the terms of the Artistic License.  Please see
 * the file LICENSE, included in this package, for details.
 *
 * Copyright (C) 2007 Mark Wong
 */

-- FIXEME: fin and day are supposed to be an array of multiple data types.
-- Took the easy way out and may VARCHAR for now.
CREATE OR REPLACE FUNCTION SecurityDetailFrame1 (
		IN access_lob_flag BOOL,
		IN max_rows_to_return INTEGER,
		IN start_date DATE,
		IN symbol VARCHAR,
		OUT x52_wk_high NUMERIC,
		OUT x52_wk_high_date DATE,
		OUT x52_wk_low NUMERIC,
		OUT x52_wk_low_date DATE,
		OUT ceo_name VARCHAR,
		OUT co_ad_ctry VARCHAR,
		OUT co_ad_div VARCHAR,
		OUT co_ad_line1 VARCHAR,
		OUT co_ad_line2 VARCHAR,
		OUT co_ad_town VARCHAR,
		OUT co_ad_zip VARCHAR,
		OUT co_desc VARCHAR,
		OUT co_name VARCHAR,
		OUT co_st_id VARCHAR,
		OUT cp_co_name VARCHAR[],
		OUT cp_in_name VARCHAR[],
		OUT day VARCHAR[],
		OUT day_len INTEGER,
		OUT divid NUMERIC,
		OUT ex_ad_ctry VARCHAR,
		OUT ex_ad_div VARCHAR,
		OUT ex_ad_line1 VARCHAR,
		OUT ex_ad_line2 VARCHAR,
		OUT ex_ad_town VARCHAR,
		OUT ex_ad_zip VARCHAR,
		OUT ex_close INTEGER,
		OUT ex_date DATE,
		OUT ex_desc VARCHAR,
		OUT ex_name VARCHAR,
		OUT ex_num_symb INTEGER,
		OUT ex_open INTEGER,
		OUT fin VARCHAR[],
		OUT fin_len INTEGER,
		OUT last_open NUMERIC,
		OUT last_price NUMERIC,
		OUT last_vol INTEGER,
		OUT news VARCHAR[],
		OUT news_len INTEGER,
		OUT num_out BIGINT,
		OUT open_date DATE,
		OUT pe_ratio NUMERIC,
		OUT s_name VARCHAR,
		OUT sp_rate VARCHAR,
		OUT start_date DATE,
		OUT status INTEGER,
		OUT yield NUMERIC)
RETURNS SETOF record AS '$libdir/security_detail', 'SecurityDetailFrame1'
LANGUAGE C IMMUTABLE STRICT;
