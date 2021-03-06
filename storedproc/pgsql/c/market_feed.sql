/*
 * This file is released under the terms of the Artistic License.  Please see
 * the file LICENSE, included in this package, for details.
 *
 * Copyright (C) 2006-2007 Rilson Nascimento
 *               2006-2010 Mark Wong
 *
 * Market Feed transaction
 * ------------------------
 * The Market-Feed transaction receives the latest prices for securities
 * that come in on the market feed ticker.
 *
 * Based on TPC-E Standard Specification Draft Revision 1.10.0 Clause 3.3.3.3.
 */

/*
 * Frame 1
 * responsible to find the symbol and to modify the row in the LAST_TRADE table
 * for that symbol with the new price, to add the quantity traded to the daily
 * volume, and to modify the last trade date
 */

/*
 * FIXME: The specification seems to say indicate that the correct way to
 * implement this frame is to have this transaction make the calls to the
 * Market Exchange Emulator.  Instead we'll have the stored function return
 * the data that should be sent to the Market Exchange Emulator and have the
 * Brokerage House Emulator do that.
 */

CREATE OR REPLACE FUNCTION MarketFeedFrame1(
		IN price_quote NUMERIC(8, 2)[],
		IN status_submitted VARCHAR(4),
		IN symbol VARCHAR(15)[],
		IN trade_qty INTEGER[],
		IN type_limit_buy VARCHAR(3),
		IN type_limit_sell VARCHAR(3),
		IN type_stop_loss VARCHAR(3),
		OUT send_len INTEGER,
		OUT status INTEGER,
		OUT rows_updated INTEGER,
		OUT symbol VARCHAR(15)[],
		OUT trade_id BIGINT[],
		OUT price_quote NUMERIC(8, 2)[],
		OUT trade_qty INTEGER[],
		OUT trade_type VARCHAR(3)[])
RETURNS SETOF record AS '$libdir/market_feed', 'MarketFeedFrame1'
LANGUAGE C IMMUTABLE STRICT;
