/*
 * This file is released under the terms of the Artistic License.  Please see
 * the file LICENSE, included in this package, for details.
 *
 * Copyright (C) 2007 Mark Wong
 */

CREATE OR REPLACE FUNCTION TradeCleanupFrame1 (
		IN st_canceled_id VARCHAR(4),
		IN st_pending_id VARCHAR(4),
		IN st_submitted_id VARCHAR(4),
		IN trade_id BIGINT,
		OUT status INTEGER)
RETURNS INTEGER AS '$libdir/trade_cleanup', 'TradeCleanupFrame1'
LANGUAGE C IMMUTABLE STRICT;
