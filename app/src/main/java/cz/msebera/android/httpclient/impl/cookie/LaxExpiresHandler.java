package cz.msebera.android.httpclient.impl.cookie;

import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import cz.msebera.android.httpclient.cookie.CommonCookieAttributeHandler;
import cz.msebera.android.httpclient.cookie.MalformedCookieException;
import cz.msebera.android.httpclient.cookie.SM;
import cz.msebera.android.httpclient.cookie.SetCookie;
import cz.msebera.android.httpclient.message.ParserCursor;
import cz.msebera.android.httpclient.util.Args;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes2.dex */
public class LaxExpiresHandler extends AbstractCookieAttributeHandler implements CommonCookieAttributeHandler {
    private static final Pattern DAY_OF_MONTH_PATTERN;
    private static final BitSet DELIMS;
    private static final Map<String, Integer> MONTHS;
    private static final Pattern MONTH_PATTERN;
    private static final Pattern TIME_PATTERN;
    static final TimeZone UTC = TimeZone.getTimeZone("UTC");
    private static final Pattern YEAR_PATTERN;

    static {
        BitSet bitSet = new BitSet();
        bitSet.set(9);
        for (int i2 = 32; i2 <= 47; i2++) {
            bitSet.set(i2);
        }
        for (int i7 = 59; i7 <= 64; i7++) {
            bitSet.set(i7);
        }
        for (int i8 = 91; i8 <= 96; i8++) {
            bitSet.set(i8);
        }
        for (int i9 = 123; i9 <= 126; i9++) {
            bitSet.set(i9);
        }
        DELIMS = bitSet;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(12);
        concurrentHashMap.put("jan", 0);
        concurrentHashMap.put("feb", 1);
        concurrentHashMap.put("mar", 2);
        concurrentHashMap.put("apr", 3);
        concurrentHashMap.put("may", 4);
        concurrentHashMap.put("jun", 5);
        concurrentHashMap.put("jul", 6);
        concurrentHashMap.put("aug", 7);
        concurrentHashMap.put("sep", 8);
        concurrentHashMap.put("oct", 9);
        concurrentHashMap.put("nov", 10);
        concurrentHashMap.put("dec", 11);
        MONTHS = concurrentHashMap;
        TIME_PATTERN = Pattern.compile("^([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})([^0-9].*)?$");
        DAY_OF_MONTH_PATTERN = Pattern.compile("^([0-9]{1,2})([^0-9].*)?$");
        MONTH_PATTERN = Pattern.compile("^(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)(.*)?$", 2);
        YEAR_PATTERN = Pattern.compile("^([0-9]{2,4})([^0-9].*)?$");
    }

    private void copyContent(CharSequence charSequence, ParserCursor parserCursor, StringBuilder sb) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int pos2 = parserCursor.getPos(); pos2 < upperBound; pos2++) {
            char charAt = charSequence.charAt(pos2);
            if (DELIMS.get(charAt)) {
                break;
            }
            pos++;
            sb.append(charAt);
        }
        parserCursor.updatePos(pos);
    }

    private void skipDelims(CharSequence charSequence, ParserCursor parserCursor) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int pos2 = parserCursor.getPos(); pos2 < upperBound; pos2++) {
            if (!DELIMS.get(charSequence.charAt(pos2))) {
                break;
            }
            pos++;
        }
        parserCursor.updatePos(pos);
    }

    @Override // cz.msebera.android.httpclient.cookie.CommonCookieAttributeHandler
    public String getAttributeName() {
        return ClientCookie.EXPIRES_ATTR;
    }

    @Override // cz.msebera.android.httpclient.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        LaxExpiresHandler laxExpiresHandler = this;
        Args.notNull(setCookie, SM.COOKIE);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        StringBuilder sb = new StringBuilder();
        boolean z6 = false;
        int i2 = 0;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (!parserCursor.atEnd()) {
            try {
                laxExpiresHandler.skipDelims(str, parserCursor);
                sb.setLength(0);
                laxExpiresHandler.copyContent(str, parserCursor, sb);
                if (sb.length() == 0) {
                    break;
                }
                if (!z6) {
                    Matcher matcher = TIME_PATTERN.matcher(sb);
                    if (matcher.matches()) {
                        i8 = Integer.parseInt(matcher.group(1));
                        i9 = Integer.parseInt(matcher.group(2));
                        i10 = Integer.parseInt(matcher.group(3));
                        z6 = true;
                        laxExpiresHandler = this;
                    }
                }
                if (!z7) {
                    Matcher matcher2 = DAY_OF_MONTH_PATTERN.matcher(sb);
                    if (matcher2.matches()) {
                        i7 = Integer.parseInt(matcher2.group(1));
                        z7 = true;
                        laxExpiresHandler = this;
                    }
                }
                if (!z8) {
                    Matcher matcher3 = MONTH_PATTERN.matcher(sb);
                    if (matcher3.matches()) {
                        i11 = MONTHS.get(matcher3.group(1).toLowerCase(Locale.ROOT)).intValue();
                        z8 = true;
                        laxExpiresHandler = this;
                    }
                }
                if (!z9) {
                    Matcher matcher4 = YEAR_PATTERN.matcher(sb);
                    if (matcher4.matches()) {
                        i2 = Integer.parseInt(matcher4.group(1));
                        z9 = true;
                        laxExpiresHandler = this;
                    }
                }
                laxExpiresHandler = this;
            } catch (NumberFormatException unused) {
                throw new MalformedCookieException("Invalid 'expires' attribute: ".concat(str));
            }
        }
        if (!z6 || !z7 || !z8 || !z9) {
            throw new MalformedCookieException("Invalid 'expires' attribute: ".concat(str));
        }
        if (i2 >= 70 && i2 <= 99) {
            i2 += 1900;
        }
        if (i2 >= 0 && i2 <= 69) {
            i2 += 2000;
        }
        if (i7 < 1 || i7 > 31 || i2 < 1601 || i8 > 23 || i9 > 59 || i10 > 59) {
            throw new MalformedCookieException("Invalid 'expires' attribute: ".concat(str));
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(UTC);
        calendar.setTimeInMillis(0L);
        calendar.set(13, i10);
        calendar.set(12, i9);
        calendar.set(11, i8);
        calendar.set(5, i7);
        calendar.set(2, i11);
        calendar.set(1, i2);
        setCookie.setExpiryDate(calendar.getTime());
    }
}
