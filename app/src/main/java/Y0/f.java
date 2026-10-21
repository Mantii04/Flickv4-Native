package Y0;

import P3.AbstractC0226a;
import P3.v;
import S0.o;
import S0.r;
import S0.s;
import android.text.Layout;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ColorParser;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.datasource.DataSchemeDataSource;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.SubtitleDecoderException;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.reactivex.annotations.SchedulerSupport;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public final class f implements s {

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f4291b = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f4292c = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f4293d = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: e, reason: collision with root package name */
    public static final Pattern f4294e = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: f, reason: collision with root package name */
    public static final Pattern f4295f = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f4296g = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");

    /* renamed from: h, reason: collision with root package name */
    public static final Pattern f4297h = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: i, reason: collision with root package name */
    public static final d f4298i = new d(30.0f, 1, 1);

    /* renamed from: a, reason: collision with root package name */
    public final XmlPullParserFactory f4299a;

    public f() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f4299a = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e3) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e3);
        }
    }

    public static i a(i iVar) {
        return iVar == null ? new i() : iVar;
    }

    public static boolean b(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals(CmcdConfiguration.KEY_BITRATE) || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals(MimeTypes.BASE_TYPE_IMAGE) || str.equals(DataSchemeDataSource.SCHEME_DATA) || str.equals("information");
    }

    public static int c(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return 15;
        }
        Matcher matcher = f4297h.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.w("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
        boolean z6 = true;
        try {
            int parseInt = Integer.parseInt((String) v.checkNotNull(matcher.group(1)));
            int parseInt2 = Integer.parseInt((String) v.checkNotNull(matcher.group(2)));
            if (parseInt == 0 || parseInt2 == 0) {
                z6 = false;
            }
            v.checkArgument(z6, "Invalid cell resolution %s %s", parseInt, parseInt2);
            return parseInt2;
        } catch (NumberFormatException unused) {
            Log.w("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
    }

    public static void d(String str, i iVar) {
        Matcher matcher;
        String str2;
        String[] split = Util.split(str, "\\s+");
        int length = split.length;
        Pattern pattern = f4293d;
        if (length == 1) {
            matcher = pattern.matcher(str);
        } else {
            if (split.length != 2) {
                throw new SubtitleDecoderException(A.i.m(new StringBuilder("Invalid number of entries for fontSize: "), split.length, "."));
            }
            matcher = pattern.matcher(split[1]);
            Log.w("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new SubtitleDecoderException(A.i.l("Invalid expression for fontSize: '", str, "'."));
        }
        str2 = (String) v.checkNotNull(matcher.group(3));
        str2.getClass();
        switch (str2) {
            case "%":
                iVar.setFontSizeUnit(3);
                break;
            case "em":
                iVar.setFontSizeUnit(2);
                break;
            case "px":
                iVar.setFontSizeUnit(1);
                break;
            default:
                throw new SubtitleDecoderException(A.i.l("Invalid unit for fontSize: '", str2, "'."));
        }
        iVar.setFontSize(Float.parseFloat((String) v.checkNotNull(matcher.group(1))));
    }

    public static d e(XmlPullParser xmlPullParser) {
        float f3;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            v.checkArgument(Util.split(attributeValue2, StringUtils.SPACE).length == 2, "frameRateMultiplier doesn't have 2 parts");
            f3 = Integer.parseInt(r2[0]) / Integer.parseInt(r2[1]);
        } else {
            f3 = 1.0f;
        }
        d dVar = f4298i;
        int i2 = dVar.f4287b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        return new d(parseInt * f3, i2, attributeValue4 != null ? Integer.parseInt(attributeValue4) : dVar.f4288c);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x027c A[LOOP:0: B:2:0x0009->B:22:0x027c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x027b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void f(org.xmlpull.v1.XmlPullParser r20, java.util.HashMap r21, int r22, Y0.e r23, java.util.HashMap r24, java.util.HashMap r25) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Y0.f.f(org.xmlpull.v1.XmlPullParser, java.util.HashMap, int, Y0.e, java.util.HashMap, java.util.HashMap):void");
    }

    public static c g(XmlPullParser xmlPullParser, c cVar, HashMap hashMap, d dVar) {
        String attributeValue;
        int attributeCount = xmlPullParser.getAttributeCount();
        String[] strArr = null;
        i h7 = h(xmlPullParser, null);
        long j7 = -9223372036854775807L;
        long j8 = -9223372036854775807L;
        long j9 = -9223372036854775807L;
        long j10 = -9223372036854775807L;
        String str = "";
        int i2 = 0;
        String str2 = null;
        while (i2 < attributeCount) {
            long j11 = j7;
            String attributeName = xmlPullParser.getAttributeName(i2);
            attributeValue = xmlPullParser.getAttributeValue(i2);
            attributeName.getClass();
            switch (attributeName) {
                case "region":
                    if (!hashMap.containsKey(attributeValue)) {
                        break;
                    } else {
                        str = attributeValue;
                        break;
                    }
                case "dur":
                    j10 = i(attributeValue, dVar);
                    break;
                case "end":
                    j9 = i(attributeValue, dVar);
                    break;
                case "begin":
                    j8 = i(attributeValue, dVar);
                    break;
                case "style":
                    String trim = attributeValue.trim();
                    String[] split = trim.isEmpty() ? new String[0] : Util.split(trim, "\\s+");
                    if (split.length > 0) {
                        strArr = split;
                    }
                    break;
                case "backgroundImage":
                    if (attributeValue.startsWith("#")) {
                        str2 = attributeValue.substring(1);
                    }
            }
            i2++;
            j7 = j11;
        }
        long j12 = j7;
        if (cVar != null) {
            long j13 = cVar.f4276d;
            if (j13 != j12) {
                if (j8 != j12) {
                    j8 += j13;
                }
                if (j9 != j12) {
                    j9 += j13;
                }
            }
        }
        long j14 = j8;
        if (j9 == j12) {
            if (j10 != j12) {
                j9 = j14 + j10;
            } else if (cVar != null) {
                long j15 = cVar.f4277e;
                if (j15 != j12) {
                    j9 = j15;
                }
            }
        }
        return c.buildNode(xmlPullParser.getName(), j14, j9, h7, strArr, str, str2, cVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v51 */
    /* JADX WARN: Type inference failed for: r7v53 */
    /* JADX WARN: Type inference failed for: r7v55 */
    /* JADX WARN: Type inference failed for: r7v57 */
    /* JADX WARN: Type inference failed for: r7v59 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v60 */
    /* JADX WARN: Type inference failed for: r7v62 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v35 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v55 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v8 */
    public static i h(XmlPullParser xmlPullParser, i iVar) {
        ?? r9;
        boolean z6;
        ?? r7;
        char c7;
        char c8;
        ?? r72;
        int attributeCount = xmlPullParser.getAttributeCount();
        boolean z7 = false;
        i iVar2 = iVar;
        int i2 = 0;
        while (i2 < attributeCount) {
            String attributeValue = xmlPullParser.getAttributeValue(i2);
            String attributeName = xmlPullParser.getAttributeName(i2);
            attributeName.getClass();
            Layout.Alignment alignment = null;
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals("fontStyle")) {
                        r9 = z7;
                        break;
                    }
                    r9 = -1;
                    break;
                case -1289044182:
                    if (attributeName.equals("extent")) {
                        r9 = 1;
                        break;
                    }
                    r9 = -1;
                    break;
                case -1224696685:
                    if (attributeName.equals("fontFamily")) {
                        r9 = 2;
                        break;
                    }
                    r9 = -1;
                    break;
                case -1065511464:
                    if (attributeName.equals("textAlign")) {
                        r9 = 3;
                        break;
                    }
                    r9 = -1;
                    break;
                case -1008619738:
                    if (attributeName.equals(FirebaseAnalytics.Param.ORIGIN)) {
                        r9 = 4;
                        break;
                    }
                    r9 = -1;
                    break;
                case -879295043:
                    if (attributeName.equals("textDecoration")) {
                        r9 = 5;
                        break;
                    }
                    r9 = -1;
                    break;
                case -734428249:
                    if (attributeName.equals("fontWeight")) {
                        r9 = 6;
                        break;
                    }
                    r9 = -1;
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        r9 = 7;
                        break;
                    }
                    r9 = -1;
                    break;
                case 3511770:
                    if (attributeName.equals("ruby")) {
                        r9 = 8;
                        break;
                    }
                    r9 = -1;
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        r9 = 9;
                        break;
                    }
                    r9 = -1;
                    break;
                case 109403361:
                    if (attributeName.equals("shear")) {
                        r9 = 10;
                        break;
                    }
                    r9 = -1;
                    break;
                case 110138194:
                    if (attributeName.equals("textCombine")) {
                        r9 = 11;
                        break;
                    }
                    r9 = -1;
                    break;
                case 365601008:
                    if (attributeName.equals("fontSize")) {
                        r9 = 12;
                        break;
                    }
                    r9 = -1;
                    break;
                case 921125321:
                    if (attributeName.equals("textEmphasis")) {
                        r9 = 13;
                        break;
                    }
                    r9 = -1;
                    break;
                case 1115953443:
                    if (attributeName.equals("rubyPosition")) {
                        r9 = 14;
                        break;
                    }
                    r9 = -1;
                    break;
                case 1287124693:
                    if (attributeName.equals("backgroundColor")) {
                        r9 = 15;
                        break;
                    }
                    r9 = -1;
                    break;
                case 1754920356:
                    if (attributeName.equals("multiRowAlign")) {
                        r9 = 16;
                        break;
                    }
                    r9 = -1;
                    break;
                default:
                    r9 = -1;
                    break;
            }
            switch (r9) {
                case 0:
                    z6 = z7;
                    iVar2 = a(iVar2).setItalic("italic".equalsIgnoreCase(attributeValue));
                    break;
                case 1:
                    z6 = z7;
                    iVar2 = a(iVar2).setExtent(attributeValue);
                    break;
                case 2:
                    z6 = z7;
                    iVar2 = a(iVar2).setFontFamily(attributeValue);
                    break;
                case 3:
                    z6 = z7;
                    i a7 = a(iVar2);
                    String lowerCase = AbstractC0226a.toLowerCase(attributeValue);
                    lowerCase.getClass();
                    switch (lowerCase.hashCode()) {
                        case -1364013995:
                            if (lowerCase.equals("center")) {
                                r7 = z6;
                                break;
                            }
                            r7 = -1;
                            break;
                        case 100571:
                            if (lowerCase.equals("end")) {
                                r7 = 1;
                                break;
                            }
                            r7 = -1;
                            break;
                        case 3317767:
                            if (lowerCase.equals("left")) {
                                r7 = 2;
                                break;
                            }
                            r7 = -1;
                            break;
                        case 108511772:
                            if (lowerCase.equals("right")) {
                                r7 = 3;
                                break;
                            }
                            r7 = -1;
                            break;
                        case 109757538:
                            if (lowerCase.equals("start")) {
                                r7 = 4;
                                break;
                            }
                            r7 = -1;
                            break;
                        default:
                            r7 = -1;
                            break;
                    }
                    switch (r7) {
                        case 0:
                            alignment = Layout.Alignment.ALIGN_CENTER;
                            break;
                        case 1:
                        case 3:
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            break;
                        case 2:
                        case 4:
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                            break;
                    }
                    iVar2 = a7.setTextAlign(alignment);
                    break;
                case 4:
                    z6 = z7;
                    iVar2 = a(iVar2).setOrigin(attributeValue);
                    break;
                case 5:
                    String lowerCase2 = AbstractC0226a.toLowerCase(attributeValue);
                    lowerCase2.getClass();
                    switch (lowerCase2.hashCode()) {
                        case -1461280213:
                            if (lowerCase2.equals("nounderline")) {
                                c7 = 0;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case -1026963764:
                            if (lowerCase2.equals("underline")) {
                                c7 = 1;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 913457136:
                            if (lowerCase2.equals("nolinethrough")) {
                                c7 = 2;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 1679736913:
                            if (lowerCase2.equals("linethrough")) {
                                c7 = 3;
                                break;
                            }
                            c7 = 65535;
                            break;
                        default:
                            c7 = 65535;
                            break;
                    }
                    switch (c7) {
                        case 0:
                            z6 = false;
                            iVar2 = a(iVar2).setUnderline(false);
                            continue;
                        case 1:
                            z6 = false;
                            iVar2 = a(iVar2).setUnderline(true);
                            continue;
                        case 2:
                            z6 = false;
                            iVar2 = a(iVar2).setLinethrough(false);
                            continue;
                        case 3:
                            iVar2 = a(iVar2).setLinethrough(true);
                            break;
                    }
                    z6 = false;
                    break;
                case 6:
                    iVar2 = a(iVar2).setBold("bold".equalsIgnoreCase(attributeValue));
                    z6 = false;
                    break;
                case 7:
                    if ("style".equals(xmlPullParser.getName())) {
                        iVar2 = a(iVar2).setId(attributeValue);
                    }
                    z6 = false;
                    break;
                case 8:
                    String lowerCase3 = AbstractC0226a.toLowerCase(attributeValue);
                    lowerCase3.getClass();
                    switch (lowerCase3.hashCode()) {
                        case -618561360:
                            if (lowerCase3.equals("baseContainer")) {
                                c8 = 0;
                                break;
                            }
                            c8 = 65535;
                            break;
                        case -410956671:
                            if (lowerCase3.equals("container")) {
                                c8 = 1;
                                break;
                            }
                            c8 = 65535;
                            break;
                        case -250518009:
                            if (lowerCase3.equals("delimiter")) {
                                c8 = 2;
                                break;
                            }
                            c8 = 65535;
                            break;
                        case -136074796:
                            if (lowerCase3.equals("textContainer")) {
                                c8 = 3;
                                break;
                            }
                            c8 = 65535;
                            break;
                        case 3016401:
                            if (lowerCase3.equals("base")) {
                                c8 = 4;
                                break;
                            }
                            c8 = 65535;
                            break;
                        case 3556653:
                            if (lowerCase3.equals(MimeTypes.BASE_TYPE_TEXT)) {
                                c8 = 5;
                                break;
                            }
                            c8 = 65535;
                            break;
                        default:
                            c8 = 65535;
                            break;
                    }
                    switch (c8) {
                        case 0:
                        case 4:
                            iVar2 = a(iVar2).setRubyType(2);
                            break;
                        case 1:
                            iVar2 = a(iVar2).setRubyType(1);
                            break;
                        case 2:
                            iVar2 = a(iVar2).setRubyType(4);
                            break;
                        case 3:
                        case 5:
                            iVar2 = a(iVar2).setRubyType(3);
                            break;
                    }
                    z6 = false;
                    break;
                case 9:
                    iVar2 = a(iVar2);
                    try {
                        iVar2.setFontColor(ColorParser.parseTtmlColor(attributeValue));
                    } catch (IllegalArgumentException unused) {
                        A.i.z("Failed parsing color value: ", attributeValue, "TtmlParser");
                    }
                    z6 = false;
                    break;
                case 10:
                    i a8 = a(iVar2);
                    Matcher matcher = f4294e.matcher(attributeValue);
                    float f3 = Float.MAX_VALUE;
                    if (matcher.matches()) {
                        try {
                            f3 = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) v.checkNotNull(matcher.group(1)))));
                        } catch (NumberFormatException e3) {
                            Log.w("TtmlParser", "Failed to parse shear: " + attributeValue, e3);
                        }
                    } else {
                        A.i.z("Invalid value for shear: ", attributeValue, "TtmlParser");
                    }
                    iVar2 = a8.setShearPercentage(f3);
                    z6 = false;
                    break;
                case 11:
                    String lowerCase4 = AbstractC0226a.toLowerCase(attributeValue);
                    lowerCase4.getClass();
                    if (lowerCase4.equals("all")) {
                        iVar2 = a(iVar2).setTextCombine(true);
                    } else if (lowerCase4.equals(SchedulerSupport.NONE)) {
                        iVar2 = a(iVar2).setTextCombine(z7);
                    }
                    z6 = z7;
                    break;
                case 12:
                    try {
                        iVar2 = a(iVar2);
                        d(attributeValue, iVar2);
                    } catch (SubtitleDecoderException unused2) {
                        A.i.z("Failed parsing fontSize value: ", attributeValue, "TtmlParser");
                    }
                    z6 = z7;
                    break;
                case 13:
                    iVar2 = a(iVar2).setTextEmphasis(b.parse(attributeValue));
                    z6 = z7;
                    break;
                case 14:
                    String lowerCase5 = AbstractC0226a.toLowerCase(attributeValue);
                    lowerCase5.getClass();
                    if (lowerCase5.equals("before")) {
                        iVar2 = a(iVar2).setRubyPosition(1);
                    } else if (lowerCase5.equals("after")) {
                        iVar2 = a(iVar2).setRubyPosition(2);
                    }
                    z6 = z7;
                    break;
                case 15:
                    iVar2 = a(iVar2);
                    try {
                        iVar2.setBackgroundColor(ColorParser.parseTtmlColor(attributeValue));
                    } catch (IllegalArgumentException unused3) {
                        A.i.z("Failed parsing background value: ", attributeValue, "TtmlParser");
                    }
                    z6 = z7;
                    break;
                case 16:
                    i a9 = a(iVar2);
                    String lowerCase6 = AbstractC0226a.toLowerCase(attributeValue);
                    lowerCase6.getClass();
                    switch (lowerCase6.hashCode()) {
                        case -1364013995:
                            if (lowerCase6.equals("center")) {
                                r72 = z7;
                                break;
                            }
                            r72 = -1;
                            break;
                        case 100571:
                            if (lowerCase6.equals("end")) {
                                r72 = 1;
                                break;
                            }
                            r72 = -1;
                            break;
                        case 3317767:
                            if (lowerCase6.equals("left")) {
                                r72 = 2;
                                break;
                            }
                            r72 = -1;
                            break;
                        case 108511772:
                            if (lowerCase6.equals("right")) {
                                r72 = 3;
                                break;
                            }
                            r72 = -1;
                            break;
                        case 109757538:
                            if (lowerCase6.equals("start")) {
                                r72 = 4;
                                break;
                            }
                            r72 = -1;
                            break;
                        default:
                            r72 = -1;
                            break;
                    }
                    switch (r72) {
                        case 0:
                            alignment = Layout.Alignment.ALIGN_CENTER;
                            break;
                        case 1:
                        case 3:
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            break;
                        case 2:
                        case 4:
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                            break;
                    }
                    iVar2 = a9.setMultiRowAlign(alignment);
                    z6 = z7;
                    break;
                default:
                    z6 = false;
                    break;
            }
            i2++;
            z7 = z6;
        }
        return iVar2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bb, code lost:
    
        if (r13.equals("ms") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long i(java.lang.String r13, Y0.d r14) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Y0.f.i(java.lang.String, Y0.d):long");
    }

    public static e j(XmlPullParser xmlPullParser) {
        String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "extent");
        if (attributeValue == null) {
            return null;
        }
        Matcher matcher = f4296g.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.w("TtmlParser", "Ignoring non-pixel tts extent: ".concat(attributeValue));
            return null;
        }
        try {
            return new e(Integer.parseInt((String) v.checkNotNull(matcher.group(1))), Integer.parseInt((String) v.checkNotNull(matcher.group(2))));
        } catch (NumberFormatException unused) {
            Log.w("TtmlParser", "Ignoring malformed tts extent: ".concat(attributeValue));
            return null;
        }
    }

    @Override // S0.s
    public int getCueReplacementBehavior() {
        return 1;
    }

    @Override // S0.s
    public void parse(byte[] bArr, int i2, int i7, r rVar, Consumer<S0.c> consumer) {
        S0.f.toCuesWithTiming(parseToLegacySubtitle(bArr, i2, i7), rVar, consumer);
    }

    @Override // S0.s
    public S0.i parseToLegacySubtitle(byte[] bArr, int i2, int i7) {
        try {
            XmlPullParser newPullParser = this.f4299a.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new g(""));
            j jVar = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, i2, i7), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            int i8 = 0;
            int i9 = 15;
            d dVar = f4298i;
            e eVar = null;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                c cVar = (c) arrayDeque.peek();
                if (i8 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            dVar = e(newPullParser);
                            i9 = c(newPullParser);
                            eVar = j(newPullParser);
                        }
                        d dVar2 = dVar;
                        e eVar2 = eVar;
                        int i10 = i9;
                        if (b(name)) {
                            if ("head".equals(name)) {
                                f(newPullParser, hashMap, i10, eVar2, hashMap2, hashMap3);
                            } else {
                                try {
                                    c g7 = g(newPullParser, cVar, hashMap2, dVar2);
                                    arrayDeque.push(g7);
                                    if (cVar != null) {
                                        cVar.addChild(g7);
                                    }
                                } catch (SubtitleDecoderException e3) {
                                    Log.w("TtmlParser", "Suppressing parser error", e3);
                                }
                            }
                            i9 = i10;
                            eVar = eVar2;
                            dVar = dVar2;
                        } else {
                            Log.i("TtmlParser", "Ignoring unsupported tag: " + newPullParser.getName());
                        }
                        i8++;
                        i9 = i10;
                        eVar = eVar2;
                        dVar = dVar2;
                    } else if (eventType == 4) {
                        ((c) v.checkNotNull(cVar)).addChild(c.buildTextNode(newPullParser.getText()));
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals("tt")) {
                            jVar = new j((c) v.checkNotNull((c) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i8++;
                } else if (eventType == 3) {
                    i8--;
                }
                newPullParser.next();
            }
            return (S0.i) v.checkNotNull(jVar);
        } catch (IOException e7) {
            throw new IllegalStateException("Unexpected error when reading input.", e7);
        } catch (XmlPullParserException e8) {
            throw new IllegalStateException("Unable to decode source", e8);
        }
    }

    @Override // S0.s
    public final /* synthetic */ void reset() {
        o.b(this);
    }
}
