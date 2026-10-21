package j6;

import cz.msebera.android.httpclient.message.TokenParser;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.HashMap;
import org.jsoup.nodes.Entities$CoreCharset;
import org.jsoup.nodes.Entities$EscapeMode;

/* loaded from: classes2.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f17016a = {',', ';'};

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f17017b = new HashMap();

    static {
        new org.jsoup.nodes.a();
    }

    public static void a(Appendable appendable, Entities$EscapeMode entities$EscapeMode, int i2) {
        String str;
        int binarySearch = Arrays.binarySearch(entities$EscapeMode.f19200f, i2);
        if (binarySearch >= 0) {
            String[] strArr = entities$EscapeMode.f19201j;
            if (binarySearch < strArr.length - 1) {
                int i7 = binarySearch + 1;
                if (entities$EscapeMode.f19200f[i7] == i2) {
                    str = strArr[i7];
                }
            }
            str = strArr[binarySearch];
        } else {
            str = "";
        }
        if (str != "") {
            appendable.append('&').append(str).append(';');
        } else {
            appendable.append("&#x").append(Integer.toHexString(i2)).append(';');
        }
    }

    public static void b(Appendable appendable, String str, org.jsoup.nodes.a aVar, boolean z6, boolean z7) {
        Entities$EscapeMode escapeMode = aVar.escapeMode();
        CharsetEncoder charsetEncoder = (CharsetEncoder) aVar.f19204f.get();
        if (charsetEncoder == null) {
            charsetEncoder = aVar.a();
        }
        Entities$CoreCharset entities$CoreCharset = aVar.f19205j;
        int length = str.length();
        int i2 = 0;
        boolean z8 = false;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            boolean z9 = true;
            if (z7) {
                if (h6.j.isWhitespace(codePointAt)) {
                    if (!z8) {
                        appendable.append(TokenParser.SP);
                        z8 = true;
                    }
                    i2 += Character.charCount(codePointAt);
                } else {
                    z8 = false;
                }
            }
            if (codePointAt < 65536) {
                char c7 = (char) codePointAt;
                if (c7 != '\"') {
                    if (c7 == '&') {
                        appendable.append("&amp;");
                    } else if (c7 != '<') {
                        if (c7 != '>') {
                            if (c7 != 160) {
                                int ordinal = entities$CoreCharset.ordinal();
                                if (ordinal != 0) {
                                    if (ordinal != 1) {
                                        z9 = charsetEncoder.canEncode(c7);
                                    }
                                } else if (c7 >= 128) {
                                    z9 = false;
                                }
                                if (z9) {
                                    appendable.append(c7);
                                } else {
                                    a(appendable, escapeMode, codePointAt);
                                }
                            } else if (escapeMode != Entities$EscapeMode.xhtml) {
                                appendable.append("&nbsp;");
                            } else {
                                appendable.append("&#xa0;");
                            }
                        } else if (z6) {
                            appendable.append(c7);
                        } else {
                            appendable.append("&gt;");
                        }
                    } else if (!z6 || escapeMode == Entities$EscapeMode.xhtml) {
                        appendable.append("&lt;");
                    } else {
                        appendable.append(c7);
                    }
                } else if (z6) {
                    appendable.append("&quot;");
                } else {
                    appendable.append(c7);
                }
            } else {
                String str2 = new String(Character.toChars(codePointAt));
                if (charsetEncoder.canEncode(str2)) {
                    appendable.append(str2);
                } else {
                    a(appendable, escapeMode, codePointAt);
                }
            }
            i2 += Character.charCount(codePointAt);
        }
    }

    public static int codepointsForName(String str, int[] iArr) {
        String str2 = (String) f17017b.get(str);
        if (str2 != null) {
            iArr[0] = str2.codePointAt(0);
            iArr[1] = str2.codePointAt(1);
            return 2;
        }
        Entities$EscapeMode entities$EscapeMode = Entities$EscapeMode.extended;
        int binarySearch = Arrays.binarySearch(entities$EscapeMode.f19198b, str);
        int i2 = binarySearch >= 0 ? entities$EscapeMode.f19199e[binarySearch] : -1;
        if (i2 == -1) {
            return 0;
        }
        iArr[0] = i2;
        return 1;
    }

    public static boolean isBaseNamedEntity(String str) {
        Entities$EscapeMode entities$EscapeMode = Entities$EscapeMode.base;
        int binarySearch = Arrays.binarySearch(entities$EscapeMode.f19198b, str);
        return (binarySearch >= 0 ? entities$EscapeMode.f19199e[binarySearch] : -1) != -1;
    }

    public static boolean isNamedEntity(String str) {
        Entities$EscapeMode entities$EscapeMode = Entities$EscapeMode.extended;
        int binarySearch = Arrays.binarySearch(entities$EscapeMode.f19198b, str);
        return (binarySearch >= 0 ? entities$EscapeMode.f19199e[binarySearch] : -1) != -1;
    }
}
