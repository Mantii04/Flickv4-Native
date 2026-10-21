package b1;

import P3.v;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.HorizontalTextInVerticalContextSpan;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.SpanUtil;
import androidx.media3.common.text.VoiceSpan;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import cz.msebera.android.httpclient.message.TokenParser;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;

/* renamed from: b1.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0637i {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f8382a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*+)?$");

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f8383b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c, reason: collision with root package name */
    public static final Map f8384c;

    /* renamed from: d, reason: collision with root package name */
    public static final Map f8385d;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f8384c = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f8385d = Collections.unmodifiableMap(hashMap2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void a(String str, C0634f c0634f, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        char c7;
        int i2;
        int i7 = c0634f.f8366b;
        int length = spannableStringBuilder.length();
        String str2 = c0634f.f8365a;
        str2.getClass();
        int i8 = -1;
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    c7 = 0;
                    break;
                }
                c7 = 65535;
                break;
            case 98:
                if (str2.equals("b")) {
                    c7 = 1;
                    break;
                }
                c7 = 65535;
                break;
            case 99:
                if (str2.equals("c")) {
                    c7 = 2;
                    break;
                }
                c7 = 65535;
                break;
            case ModuleDescriptor.MODULE_VERSION /* 105 */:
                if (str2.equals(CmcdData.OBJECT_TYPE_INIT_SEGMENT)) {
                    c7 = 3;
                    break;
                }
                c7 = 65535;
                break;
            case 117:
                if (str2.equals("u")) {
                    c7 = 4;
                    break;
                }
                c7 = 65535;
                break;
            case 118:
                if (str2.equals("v")) {
                    c7 = 5;
                    break;
                }
                c7 = 65535;
                break;
            case 3314158:
                if (str2.equals("lang")) {
                    c7 = 6;
                    break;
                }
                c7 = 65535;
                break;
            case 3511770:
                if (str2.equals("ruby")) {
                    c7 = 7;
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
            case 6:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i7, length, 33);
                break;
            case 2:
                for (String str3 : c0634f.f8368d) {
                    Map map = f8384c;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i7, length, 33);
                    } else {
                        Map map2 = f8385d;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i7, length, 33);
                        }
                    }
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i7, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i7, length, 33);
                break;
            case 5:
                spannableStringBuilder.setSpan(new VoiceSpan(c0634f.f8367c), i7, length, 33);
                break;
            case 7:
                int c8 = c(list2, str, c0634f);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                Collections.sort(arrayList, C0633e.f8362c);
                int i9 = c0634f.f8366b;
                int i10 = 0;
                int i11 = 0;
                while (i10 < arrayList.size()) {
                    if ("rt".equals(((C0633e) arrayList.get(i10)).f8363a.f8365a)) {
                        C0633e c0633e = (C0633e) arrayList.get(i10);
                        int c9 = c(list2, str, c0633e.f8363a);
                        if (c9 == i8) {
                            c9 = c8 != i8 ? c8 : 1;
                        }
                        int i12 = c0633e.f8363a.f8366b - i11;
                        int i13 = c0633e.f8364b - i11;
                        CharSequence subSequence = spannableStringBuilder.subSequence(i12, i13);
                        spannableStringBuilder.delete(i12, i13);
                        spannableStringBuilder.setSpan(new RubySpan(subSequence.toString(), c9), i9, i12, 33);
                        i11 = subSequence.length() + i11;
                        i9 = i12;
                    }
                    i10++;
                    i8 = -1;
                }
                break;
            default:
                return;
        }
        ArrayList b7 = b(list2, str, c0634f);
        for (int i14 = 0; i14 < b7.size(); i14 += i2) {
            C0631c c0631c = ((C0635g) b7.get(i14)).f8370e;
            if (c0631c == null) {
                i2 = 1;
            } else {
                if (c0631c.getStyle() != -1) {
                    SpanUtil.addOrReplaceSpan(spannableStringBuilder, new StyleSpan(c0631c.getStyle()), i7, length, 33);
                }
                if (c0631c.isLinethrough()) {
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i7, length, 33);
                }
                if (c0631c.isUnderline()) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i7, length, 33);
                }
                if (c0631c.hasFontColor()) {
                    SpanUtil.addOrReplaceSpan(spannableStringBuilder, new ForegroundColorSpan(c0631c.getFontColor()), i7, length, 33);
                }
                if (c0631c.hasBackgroundColor()) {
                    SpanUtil.addOrReplaceSpan(spannableStringBuilder, new BackgroundColorSpan(c0631c.getBackgroundColor()), i7, length, 33);
                }
                if (c0631c.getFontFamily() != null) {
                    SpanUtil.addOrReplaceSpan(spannableStringBuilder, new TypefaceSpan(c0631c.getFontFamily()), i7, length, 33);
                }
                int fontSizeUnit = c0631c.getFontSizeUnit();
                if (fontSizeUnit != 1) {
                    if (fontSizeUnit == 2) {
                        SpanUtil.addOrReplaceSpan(spannableStringBuilder, new RelativeSizeSpan(c0631c.getFontSize()), i7, length, 33);
                    } else if (fontSizeUnit == 3) {
                        SpanUtil.addOrReplaceSpan(spannableStringBuilder, new RelativeSizeSpan(c0631c.getFontSize() / 100.0f), i7, length, 33);
                    }
                    i2 = 1;
                } else {
                    i2 = 1;
                    SpanUtil.addOrReplaceSpan(spannableStringBuilder, new AbsoluteSizeSpan((int) c0631c.getFontSize(), true), i7, length, 33);
                }
                if (c0631c.getCombineUpright()) {
                    spannableStringBuilder.setSpan(new HorizontalTextInVerticalContextSpan(), i7, length, 33);
                }
            }
        }
    }

    public static ArrayList b(List list, String str, C0634f c0634f) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            C0631c c0631c = (C0631c) list.get(i2);
            int specificityScore = c0631c.getSpecificityScore(str, c0634f.f8365a, c0634f.f8368d, c0634f.f8367c);
            if (specificityScore > 0) {
                arrayList.add(new C0635g(specificityScore, c0631c));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static int c(List list, String str, C0634f c0634f) {
        ArrayList b7 = b(list, str, c0634f);
        for (int i2 = 0; i2 < b7.size(); i2++) {
            C0631c c0631c = ((C0635g) b7.get(i2)).f8370e;
            if (c0631c.getRubyPosition() != -1) {
                return c0631c.getRubyPosition();
            }
        }
        return -1;
    }

    public static C0632d d(String str, Matcher matcher, ParsableByteArray parsableByteArray, List list) {
        C0636h c0636h = new C0636h();
        try {
            c0636h.f8371a = AbstractC0639k.parseTimestampUs((String) v.checkNotNull(matcher.group(1)));
            c0636h.f8372b = AbstractC0639k.parseTimestampUs((String) v.checkNotNull(matcher.group(2)));
            e((String) v.checkNotNull(matcher.group(3)), c0636h);
            StringBuilder sb = new StringBuilder();
            String readLine = parsableByteArray.readLine();
            while (!TextUtils.isEmpty(readLine)) {
                if (sb.length() > 0) {
                    sb.append(StringUtils.LF);
                }
                sb.append(readLine.trim());
                readLine = parsableByteArray.readLine();
            }
            c0636h.f8373c = f(str, sb.toString(), list);
            return c0636h.build();
        } catch (IllegalArgumentException unused) {
            Log.w("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void e(String str, C0636h c0636h) {
        int i2;
        char c7;
        int i7;
        int i8;
        Matcher matcher = f8383b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) v.checkNotNull(matcher.group(1));
            String str3 = (String) v.checkNotNull(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    g(str3, c0636h);
                } else if ("align".equals(str2)) {
                    str3.getClass();
                    switch (str3) {
                        case "center":
                        case "middle":
                            i2 = 2;
                            break;
                        case "end":
                            i2 = 3;
                            break;
                        case "left":
                            i2 = 4;
                            break;
                        case "right":
                            i2 = 5;
                            break;
                        case "start":
                            i2 = 1;
                            break;
                        default:
                            Log.w("WebvttCueParser", "Invalid alignment value: ".concat(str3));
                            i2 = 2;
                            break;
                    }
                    c0636h.f8374d = i2;
                } else if ("position".equals(str2)) {
                    int indexOf = str3.indexOf(44);
                    if (indexOf != -1) {
                        String substring = str3.substring(indexOf + 1);
                        substring.getClass();
                        switch (substring.hashCode()) {
                            case -1842484672:
                                if (substring.equals("line-left")) {
                                    c7 = 0;
                                    break;
                                }
                                c7 = 65535;
                                break;
                            case -1364013995:
                                if (substring.equals("center")) {
                                    c7 = 1;
                                    break;
                                }
                                c7 = 65535;
                                break;
                            case -1276788989:
                                if (substring.equals("line-right")) {
                                    c7 = 2;
                                    break;
                                }
                                c7 = 65535;
                                break;
                            case -1074341483:
                                if (substring.equals("middle")) {
                                    c7 = 3;
                                    break;
                                }
                                c7 = 65535;
                                break;
                            case 100571:
                                if (substring.equals("end")) {
                                    c7 = 4;
                                    break;
                                }
                                c7 = 65535;
                                break;
                            case 109757538:
                                if (substring.equals("start")) {
                                    c7 = 5;
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
                            case 5:
                                i7 = 0;
                                break;
                            case 1:
                            case 3:
                                i7 = 1;
                                break;
                            case 2:
                            case 4:
                                i7 = 2;
                                break;
                            default:
                                Log.w("WebvttCueParser", "Invalid anchor value: ".concat(substring));
                                i7 = Integer.MIN_VALUE;
                                break;
                        }
                        c0636h.f8379i = i7;
                        str3 = str3.substring(0, indexOf);
                    }
                    c0636h.f8378h = AbstractC0639k.parsePercentage(str3);
                } else if ("size".equals(str2)) {
                    c0636h.f8380j = AbstractC0639k.parsePercentage(str3);
                } else if ("vertical".equals(str2)) {
                    str3.getClass();
                    if (str3.equals("lr")) {
                        i8 = 2;
                    } else if (str3.equals("rl")) {
                        i8 = 1;
                    } else {
                        Log.w("WebvttCueParser", "Invalid 'vertical' value: ".concat(str3));
                        i8 = Integer.MIN_VALUE;
                    }
                    c0636h.f8381k = i8;
                } else {
                    Log.w("WebvttCueParser", "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException unused) {
                Log.w("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x00f8. Please report as an issue. */
    public static SpannedString f(String str, String str2, List list) {
        int i2;
        int i7;
        int i8;
        int i9 = 2;
        int i10 = 1;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < str2.length()) {
            char charAt = str2.charAt(i11);
            if (charAt == '&') {
                i11 += i10;
                int indexOf = str2.indexOf(59, i11);
                i2 = i10;
                int indexOf2 = str2.indexOf(32, i11);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    String substring = str2.substring(i11, indexOf);
                    substring.getClass();
                    switch (substring.hashCode()) {
                        case 3309:
                            if (substring.equals("gt")) {
                                i7 = 0;
                                break;
                            }
                            i7 = -1;
                            break;
                        case 3464:
                            if (substring.equals("lt")) {
                                i7 = i2;
                                break;
                            }
                            i7 = -1;
                            break;
                        case 96708:
                            if (substring.equals("amp")) {
                                i7 = 2;
                                break;
                            }
                            i7 = -1;
                            break;
                        case 3374865:
                            if (substring.equals("nbsp")) {
                                i7 = 3;
                                break;
                            }
                            i7 = -1;
                            break;
                        default:
                            i7 = -1;
                            break;
                    }
                    switch (i7) {
                        case 0:
                            spannableStringBuilder.append('>');
                            break;
                        case 1:
                            spannableStringBuilder.append('<');
                            break;
                        case 2:
                            spannableStringBuilder.append('&');
                            break;
                        case 3:
                            spannableStringBuilder.append(TokenParser.SP);
                            break;
                        default:
                            Log.w("WebvttCueParser", "ignoring unsupported entity: '&" + substring + ";'");
                            break;
                    }
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append((CharSequence) StringUtils.SPACE);
                    }
                    i11 = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
                i11 += i10;
                i2 = i10;
            } else {
                int i12 = i11 + 1;
                if (i12 < str2.length()) {
                    int i13 = str2.charAt(i12) == '/' ? i10 : 0;
                    int indexOf3 = str2.indexOf(62, i12);
                    i12 = indexOf3 == -1 ? str2.length() : indexOf3 + i10;
                    int i14 = i12 - 2;
                    int i15 = str2.charAt(i14) == '/' ? i10 : 0;
                    int i16 = i11 + (i13 != 0 ? i9 : i10);
                    if (i15 == 0) {
                        i14 = i12 - 1;
                    }
                    String substring2 = str2.substring(i16, i14);
                    if (!substring2.trim().isEmpty()) {
                        String trim = substring2.trim();
                        v.checkArgument(trim.isEmpty() ^ i10);
                        String str3 = Util.splitAtFirst(trim, "[ \\.]")[0];
                        str3.getClass();
                        switch (str3.hashCode()) {
                            case 98:
                                if (str3.equals("b")) {
                                    i8 = 0;
                                    break;
                                }
                                i8 = -1;
                                break;
                            case 99:
                                if (str3.equals("c")) {
                                    i8 = i10;
                                    break;
                                }
                                i8 = -1;
                                break;
                            case ModuleDescriptor.MODULE_VERSION /* 105 */:
                                if (str3.equals(CmcdData.OBJECT_TYPE_INIT_SEGMENT)) {
                                    i8 = i9;
                                    break;
                                }
                                i8 = -1;
                                break;
                            case 117:
                                if (str3.equals("u")) {
                                    i8 = 3;
                                    break;
                                }
                                i8 = -1;
                                break;
                            case 118:
                                if (str3.equals("v")) {
                                    i8 = 4;
                                    break;
                                }
                                i8 = -1;
                                break;
                            case 3650:
                                if (str3.equals("rt")) {
                                    i8 = 5;
                                    break;
                                }
                                i8 = -1;
                                break;
                            case 3314158:
                                if (str3.equals("lang")) {
                                    i8 = 6;
                                    break;
                                }
                                i8 = -1;
                                break;
                            case 3511770:
                                if (str3.equals("ruby")) {
                                    i8 = 7;
                                    break;
                                }
                                i8 = -1;
                                break;
                            default:
                                i8 = -1;
                                break;
                        }
                        switch (i8) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                if (i13 == 0) {
                                    if (i15 == 0) {
                                        arrayDeque.push(C0634f.buildStartTag(substring2, spannableStringBuilder.length()));
                                        break;
                                    }
                                } else {
                                    while (!arrayDeque.isEmpty()) {
                                        C0634f c0634f = (C0634f) arrayDeque.pop();
                                        a(str, c0634f, arrayList, spannableStringBuilder, list);
                                        if (arrayDeque.isEmpty()) {
                                            arrayList.clear();
                                        } else {
                                            arrayList.add(new C0633e(c0634f, spannableStringBuilder.length()));
                                        }
                                        if (c0634f.f8365a.equals(str3)) {
                                            break;
                                        }
                                    }
                                    break;
                                }
                                break;
                        }
                    }
                    i11 = i12;
                }
                i2 = i10;
                i11 = i12;
            }
            i10 = i2;
            i9 = 2;
        }
        while (!arrayDeque.isEmpty()) {
            a(str, (C0634f) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        a(str, C0634f.buildWholeCueVirtualTag(), Collections.EMPTY_LIST, spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    public static void g(String str, C0636h c0636h) {
        String substring;
        int i2 = 2;
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            substring = str.substring(indexOf + 1);
            substring.getClass();
            switch (substring) {
                case "center":
                case "middle":
                    i2 = 1;
                    break;
                case "end":
                    break;
                case "start":
                    i2 = 0;
                    break;
                default:
                    Log.w("WebvttCueParser", "Invalid anchor value: ".concat(substring));
                    i2 = Integer.MIN_VALUE;
                    break;
            }
            c0636h.f8377g = i2;
            str = str.substring(0, indexOf);
        }
        if (str.endsWith("%")) {
            c0636h.f8375e = AbstractC0639k.parsePercentage(str);
            c0636h.f8376f = 0;
        } else {
            c0636h.f8375e = Integer.parseInt(str);
            c0636h.f8376f = 1;
        }
    }

    public static Cue newCueForText(CharSequence charSequence) {
        C0636h c0636h = new C0636h();
        c0636h.f8373c = charSequence;
        return c0636h.toCueBuilder().build();
    }

    public static C0632d parseCue(ParsableByteArray parsableByteArray, List<C0631c> list) {
        String readLine = parsableByteArray.readLine();
        if (readLine == null) {
            return null;
        }
        Pattern pattern = f8382a;
        Matcher matcher = pattern.matcher(readLine);
        if (matcher.matches()) {
            return d(null, matcher, parsableByteArray, list);
        }
        String readLine2 = parsableByteArray.readLine();
        if (readLine2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(readLine2);
        if (matcher2.matches()) {
            return d(readLine.trim(), matcher2, parsableByteArray, list);
        }
        return null;
    }
}
