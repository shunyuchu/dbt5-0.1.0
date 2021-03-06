/*
 * This file is released under the terms of the Artistic License.  Please see
 * the file LICENSE, included in this package, for details.
 *                                                                              
 * Copyright (C) 2006-2007 Rilson Nascimento
 *               2007 Mark Wong
 *
 * Market Watch transaction                                                     
 * -------------------------                                                    
 * This transaction calculates the percentage change in value of the market     
 * capitalization of collection of securities at yesterday?~@~Ys closing price  
 * compared to the current market price for that collection of securities.      
 *                                                                              
 *                                                                              
 * Based on TPC-E Standard Specification Draft Revision 1.3.0 Clause 3.3.10.  
 */                                                                                                                                                             
/*                                                                              
 * Frame 1                                                                      
 * Build list of securities and compute percentage                              
 */                                    

CREATE OR REPLACE FUNCTION MarketWatchFrame1(
		IN acct_id IDENT_T, IN cust_id IDENT_T, IN ending_co_id IDENT_T,
		IN industry_name VARCHAR, IN start_day DATE,
		IN starting_co_id IDENT_T, OUT pct_change NUMERIC(3, 2),
		OUT status INTEGER)
RETURNS SETOF record AS '$libdir/market_watch', 'MarketWatchFrame1'
LANGUAGE C IMMUTABLE STRICT;
