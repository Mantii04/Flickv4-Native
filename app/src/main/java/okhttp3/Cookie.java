package okhttp3;

import A.i;
import P5.p;
import com.fasterxml.jackson.core.JsonPointer;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import cz.msebera.android.httpclient.cookie.SM;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* loaded from: classes2.dex */
public final class Cookie {
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;
    private final String name;
    private final String path;
    private final boolean persistent;
    private final boolean secure;
    private final String value;
    public static final Companion Companion = new Companion(null);
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public static final class Builder {
        private String domain;
        private boolean hostOnly;
        private boolean httpOnly;
        private String name;
        private boolean persistent;
        private boolean secure;
        private String value;
        private long expiresAt = DatesKt.MAX_DATE;
        private String path = RemoteSettings.FORWARD_SLASH_STRING;

        public final Cookie build() {
            String str = this.name;
            if (str == null) {
                throw new NullPointerException("builder.name == null");
            }
            String str2 = this.value;
            if (str2 == null) {
                throw new NullPointerException("builder.value == null");
            }
            long j7 = this.expiresAt;
            String str3 = this.domain;
            if (str3 != null) {
                return new Cookie(str, str2, j7, str3, this.path, this.secure, this.httpOnly, this.persistent, this.hostOnly, null);
            }
            throw new NullPointerException("builder.domain == null");
        }

        public final Builder domain(String domain) {
            j.checkNotNullParameter(domain, "domain");
            return domain(domain, false);
        }

        public final Builder expiresAt(long j7) {
            if (j7 <= 0) {
                j7 = Long.MIN_VALUE;
            }
            if (j7 > DatesKt.MAX_DATE) {
                j7 = 253402300799999L;
            }
            this.expiresAt = j7;
            this.persistent = true;
            return this;
        }

        public final Builder hostOnlyDomain(String domain) {
            j.checkNotNullParameter(domain, "domain");
            return domain(domain, true);
        }

        public final Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        public final Builder name(String name) {
            j.checkNotNullParameter(name, "name");
            if (!j.areEqual(StringsKt__StringsKt.trim(name).toString(), name)) {
                throw new IllegalArgumentException("name is not trimmed");
            }
            this.name = name;
            return this;
        }

        public final Builder path(String path) {
            j.checkNotNullParameter(path, "path");
            if (!p.startsWith$default(path, RemoteSettings.FORWARD_SLASH_STRING, false, 2, null)) {
                throw new IllegalArgumentException("path must start with '/'");
            }
            this.path = path;
            return this;
        }

        public final Builder secure() {
            this.secure = true;
            return this;
        }

        public final Builder value(String value) {
            j.checkNotNullParameter(value, "value");
            if (!j.areEqual(StringsKt__StringsKt.trim(value).toString(), value)) {
                throw new IllegalArgumentException("value is not trimmed");
            }
            this.value = value;
            return this;
        }

        private final Builder domain(String str, boolean z6) {
            String canonicalHost = HostnamesKt.toCanonicalHost(str);
            if (canonicalHost == null) {
                throw new IllegalArgumentException(i.k("unexpected domain: ", str));
            }
            this.domain = canonicalHost;
            this.hostOnly = z6;
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        private final int dateCharacterOffset(String str, int i2, int i7, boolean z6) {
            while (i2 < i7) {
                char charAt = str.charAt(i2);
                if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || ('0' <= charAt && charAt < ':') || (('a' <= charAt && charAt < '{') || (('A' <= charAt && charAt < '[') || charAt == ':'))) == (!z6)) {
                    return i2;
                }
                i2++;
            }
            return i7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean domainMatch(String str, String str2) {
            if (j.areEqual(str, str2)) {
                return true;
            }
            return p.endsWith$default(str, str2, false, 2, null) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.canParseAsIpAddress(str);
        }

        private final String parseDomain(String str) {
            if (p.endsWith$default(str, ".", false, 2, null)) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            String canonicalHost = HostnamesKt.toCanonicalHost(StringsKt__StringsKt.removePrefix(str, "."));
            if (canonicalHost != null) {
                return canonicalHost;
            }
            throw new IllegalArgumentException();
        }

        private final long parseExpires(String str, int i2, int i7) {
            int dateCharacterOffset = dateCharacterOffset(str, i2, i7, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i8 = -1;
            int i9 = -1;
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            while (dateCharacterOffset < i7) {
                int dateCharacterOffset2 = dateCharacterOffset(str, dateCharacterOffset + 1, i7, true);
                matcher.region(dateCharacterOffset, dateCharacterOffset2);
                if (i9 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String group = matcher.group(1);
                    j.checkNotNullExpressionValue(group, "matcher.group(1)");
                    i9 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    j.checkNotNullExpressionValue(group2, "matcher.group(2)");
                    i12 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    j.checkNotNullExpressionValue(group3, "matcher.group(3)");
                    i13 = Integer.parseInt(group3);
                } else if (i10 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String group4 = matcher.group(1);
                    j.checkNotNullExpressionValue(group4, "matcher.group(1)");
                    i10 = Integer.parseInt(group4);
                } else if (i11 == -1 && matcher.usePattern(Cookie.MONTH_PATTERN).matches()) {
                    String group5 = matcher.group(1);
                    j.checkNotNullExpressionValue(group5, "matcher.group(1)");
                    Locale US = Locale.US;
                    j.checkNotNullExpressionValue(US, "US");
                    String lowerCase = group5.toLowerCase(US);
                    j.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    String pattern = Cookie.MONTH_PATTERN.pattern();
                    j.checkNotNullExpressionValue(pattern, "MONTH_PATTERN.pattern()");
                    i11 = StringsKt__StringsKt.indexOf$default((CharSequence) pattern, lowerCase, 0, false, 6, (Object) null) / 4;
                } else if (i8 == -1 && matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                    String group6 = matcher.group(1);
                    j.checkNotNullExpressionValue(group6, "matcher.group(1)");
                    i8 = Integer.parseInt(group6);
                }
                dateCharacterOffset = dateCharacterOffset(str, dateCharacterOffset2 + 1, i7, false);
            }
            if (70 <= i8 && i8 < 100) {
                i8 += 1900;
            }
            if (i8 >= 0 && i8 < 70) {
                i8 += 2000;
            }
            if (i8 < 1601) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i11 == -1) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (1 > i10 || i10 >= 32) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i9 < 0 || i9 >= 24) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i12 < 0 || i12 >= 60) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i13 < 0 || i13 >= 60) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i8);
            gregorianCalendar.set(2, i11 - 1);
            gregorianCalendar.set(5, i10);
            gregorianCalendar.set(11, i9);
            gregorianCalendar.set(12, i12);
            gregorianCalendar.set(13, i13);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }

        private final long parseMaxAge(String str) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong <= 0) {
                    return Long.MIN_VALUE;
                }
                return parseLong;
            } catch (NumberFormatException e3) {
                if (new Regex("-?\\d+").matches(str)) {
                    return p.startsWith$default(str, "-", false, 2, null) ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                throw e3;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean pathMatch(HttpUrl httpUrl, String str) {
            String encodedPath = httpUrl.encodedPath();
            if (j.areEqual(encodedPath, str)) {
                return true;
            }
            return p.startsWith$default(encodedPath, str, false, 2, null) && (p.endsWith$default(str, RemoteSettings.FORWARD_SLASH_STRING, false, 2, null) || encodedPath.charAt(str.length()) == '/');
        }

        public final Cookie parse(HttpUrl url, String setCookie) {
            j.checkNotNullParameter(url, "url");
            j.checkNotNullParameter(setCookie, "setCookie");
            return parse$okhttp(System.currentTimeMillis(), url, setCookie);
        }

        public final Cookie parse$okhttp(long j7, HttpUrl url, String setCookie) {
            long j8;
            j.checkNotNullParameter(url, "url");
            j.checkNotNullParameter(setCookie, "setCookie");
            int delimiterOffset$default = Util.delimiterOffset$default(setCookie, ';', 0, 0, 6, (Object) null);
            int delimiterOffset$default2 = Util.delimiterOffset$default(setCookie, '=', 0, delimiterOffset$default, 2, (Object) null);
            Cookie cookie = null;
            if (delimiterOffset$default2 == delimiterOffset$default) {
                return null;
            }
            String trimSubstring$default = Util.trimSubstring$default(setCookie, 0, delimiterOffset$default2, 1, null);
            if (trimSubstring$default.length() == 0 || Util.indexOfControlOrNonAscii(trimSubstring$default) != -1) {
                return null;
            }
            String trimSubstring = Util.trimSubstring(setCookie, delimiterOffset$default2 + 1, delimiterOffset$default);
            if (Util.indexOfControlOrNonAscii(trimSubstring) != -1) {
                return null;
            }
            int i2 = delimiterOffset$default + 1;
            int length = setCookie.length();
            String str = null;
            String str2 = null;
            boolean z6 = false;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = true;
            long j9 = -1;
            long j10 = DatesKt.MAX_DATE;
            while (i2 < length) {
                int delimiterOffset = Util.delimiterOffset(setCookie, ';', i2, length);
                int delimiterOffset2 = Util.delimiterOffset(setCookie, '=', i2, delimiterOffset);
                String trimSubstring2 = Util.trimSubstring(setCookie, i2, delimiterOffset2);
                String trimSubstring3 = delimiterOffset2 < delimiterOffset ? Util.trimSubstring(setCookie, delimiterOffset2 + 1, delimiterOffset) : "";
                Cookie cookie2 = cookie;
                if (p.equals(trimSubstring2, ClientCookie.EXPIRES_ATTR, true)) {
                    try {
                        j10 = parseExpires(trimSubstring3, 0, trimSubstring3.length());
                    } catch (NumberFormatException | IllegalArgumentException unused) {
                    }
                } else if (p.equals(trimSubstring2, "max-age", true)) {
                    j9 = parseMaxAge(trimSubstring3);
                } else {
                    if (p.equals(trimSubstring2, ClientCookie.DOMAIN_ATTR, true)) {
                        str = parseDomain(trimSubstring3);
                        z9 = false;
                    } else if (p.equals(trimSubstring2, ClientCookie.PATH_ATTR, true)) {
                        str2 = trimSubstring3;
                    } else if (p.equals(trimSubstring2, ClientCookie.SECURE_ATTR, true)) {
                        z8 = true;
                    } else if (p.equals(trimSubstring2, "httponly", true)) {
                        z6 = true;
                    }
                    i2 = delimiterOffset + 1;
                    cookie = cookie2;
                }
                z7 = true;
                i2 = delimiterOffset + 1;
                cookie = cookie2;
            }
            Cookie cookie3 = cookie;
            if (j9 == Long.MIN_VALUE) {
                j8 = Long.MIN_VALUE;
            } else if (j9 != -1) {
                long j11 = j7 + (j9 <= 9223372036854775L ? j9 * 1000 : Long.MAX_VALUE);
                j8 = (j11 < j7 || j11 > DatesKt.MAX_DATE) ? 253402300799999L : j11;
            } else {
                j8 = j10;
            }
            String host = url.host();
            if (str == null) {
                str = host;
            } else if (!domainMatch(host, str)) {
                return cookie3;
            }
            if (host.length() != str.length() && PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(str) == null) {
                return cookie3;
            }
            String str3 = RemoteSettings.FORWARD_SLASH_STRING;
            if (str2 == null || !p.startsWith$default(str2, RemoteSettings.FORWARD_SLASH_STRING, false, 2, cookie3)) {
                String encodedPath = url.encodedPath();
                int lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) encodedPath, JsonPointer.SEPARATOR, 0, false, 6, (Object) null);
                if (lastIndexOf$default != 0) {
                    str3 = encodedPath.substring(0, lastIndexOf$default);
                    j.checkNotNullExpressionValue(str3, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                str2 = str3;
            }
            return new Cookie(trimSubstring$default, trimSubstring, j8, str, str2, z8, z6, z7, z9, null);
        }

        public final List<Cookie> parseAll(HttpUrl url, Headers headers) {
            j.checkNotNullParameter(url, "url");
            j.checkNotNullParameter(headers, "headers");
            List<String> values = headers.values(SM.SET_COOKIE);
            int size = values.size();
            ArrayList arrayList = null;
            for (int i2 = 0; i2 < size; i2++) {
                Cookie parse = parse(url, values.get(i2));
                if (parse != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(parse);
                }
            }
            if (arrayList == null) {
                return v5.p.emptyList();
            }
            List<Cookie> unmodifiableList = Collections.unmodifiableList(arrayList);
            j.checkNotNullExpressionValue(unmodifiableList, "{\n        Collections.un…ableList(cookies)\n      }");
            return unmodifiableList;
        }

        private Companion() {
        }
    }

    public /* synthetic */ Cookie(String str, String str2, long j7, String str3, String str4, boolean z6, boolean z7, boolean z8, boolean z9, g gVar) {
        this(str, str2, j7, str3, str4, z6, z7, z8, z9);
    }

    public static final Cookie parse(HttpUrl httpUrl, String str) {
        return Companion.parse(httpUrl, str);
    }

    public static final List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        return Companion.parseAll(httpUrl, headers);
    }

    /* renamed from: -deprecated_domain, reason: not valid java name */
    public final String m142deprecated_domain() {
        return this.domain;
    }

    /* renamed from: -deprecated_expiresAt, reason: not valid java name */
    public final long m143deprecated_expiresAt() {
        return this.expiresAt;
    }

    /* renamed from: -deprecated_hostOnly, reason: not valid java name */
    public final boolean m144deprecated_hostOnly() {
        return this.hostOnly;
    }

    /* renamed from: -deprecated_httpOnly, reason: not valid java name */
    public final boolean m145deprecated_httpOnly() {
        return this.httpOnly;
    }

    /* renamed from: -deprecated_name, reason: not valid java name */
    public final String m146deprecated_name() {
        return this.name;
    }

    /* renamed from: -deprecated_path, reason: not valid java name */
    public final String m147deprecated_path() {
        return this.path;
    }

    /* renamed from: -deprecated_persistent, reason: not valid java name */
    public final boolean m148deprecated_persistent() {
        return this.persistent;
    }

    /* renamed from: -deprecated_secure, reason: not valid java name */
    public final boolean m149deprecated_secure() {
        return this.secure;
    }

    /* renamed from: -deprecated_value, reason: not valid java name */
    public final String m150deprecated_value() {
        return this.value;
    }

    public final String domain() {
        return this.domain;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        return j.areEqual(cookie.name, this.name) && j.areEqual(cookie.value, this.value) && cookie.expiresAt == this.expiresAt && j.areEqual(cookie.domain, this.domain) && j.areEqual(cookie.path, this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly;
    }

    public final long expiresAt() {
        return this.expiresAt;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        int b7 = i.b(i.b(527, 31, this.name), 31, this.value);
        long j7 = this.expiresAt;
        return ((((((i.b(i.b((b7 + ((int) (j7 ^ (j7 >>> 32)))) * 31, 31, this.domain), 31, this.path) + (this.secure ? 1231 : 1237)) * 31) + (this.httpOnly ? 1231 : 1237)) * 31) + (this.persistent ? 1231 : 1237)) * 31) + (this.hostOnly ? 1231 : 1237);
    }

    public final boolean hostOnly() {
        return this.hostOnly;
    }

    public final boolean httpOnly() {
        return this.httpOnly;
    }

    public final boolean matches(HttpUrl url) {
        j.checkNotNullParameter(url, "url");
        if ((this.hostOnly ? j.areEqual(url.host(), this.domain) : Companion.domainMatch(url.host(), this.domain)) && Companion.pathMatch(url, this.path)) {
            return !this.secure || url.isHttps();
        }
        return false;
    }

    public final String name() {
        return this.name;
    }

    public final String path() {
        return this.path;
    }

    public final boolean persistent() {
        return this.persistent;
    }

    public final boolean secure() {
        return this.secure;
    }

    public String toString() {
        return toString$okhttp(false);
    }

    public final String toString$okhttp(boolean z6) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append('=');
        sb.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(DatesKt.toHttpDateString(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            sb.append("; domain=");
            if (z6) {
                sb.append(".");
            }
            sb.append(this.domain);
        }
        sb.append("; path=");
        sb.append(this.path);
        if (this.secure) {
            sb.append("; secure");
        }
        if (this.httpOnly) {
            sb.append("; httponly");
        }
        String sb2 = sb.toString();
        j.checkNotNullExpressionValue(sb2, "toString()");
        return sb2;
    }

    public final String value() {
        return this.value;
    }

    private Cookie(String str, String str2, long j7, String str3, String str4, boolean z6, boolean z7, boolean z8, boolean z9) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j7;
        this.domain = str3;
        this.path = str4;
        this.secure = z6;
        this.httpOnly = z7;
        this.persistent = z8;
        this.hostOnly = z9;
    }
}
