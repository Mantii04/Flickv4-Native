package X0;

import P3.v;
import S0.c;
import S0.i;
import S0.o;
import S0.r;
import S0.s;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public final class a implements s {

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f4220d = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");

    /* renamed from: e, reason: collision with root package name */
    public static final Pattern f4221e = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: a, reason: collision with root package name */
    public final StringBuilder f4222a = new StringBuilder();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4223b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f4224c = new ParsableByteArray();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Cue a(Spanned spanned, String str) {
        char c7;
        char c8;
        Cue.Builder text = new Cue.Builder().setText(spanned);
        if (str == null) {
            return text.build();
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    c7 = 0;
                    break;
                }
                c7 = 65535;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c7 = 6;
                    break;
                }
                c7 = 65535;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c7 = 3;
                    break;
                }
                c7 = 65535;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c7 = 1;
                    break;
                }
                c7 = 65535;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c7 = 7;
                    break;
                }
                c7 = 65535;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c7 = 4;
                    break;
                }
                c7 = 65535;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c7 = 2;
                    break;
                }
                c7 = 65535;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c7 = '\b';
                    break;
                }
                c7 = 65535;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c7 = 5;
                    break;
                }
                c7 = 65535;
                break;
            default:
                c7 = 65535;
                break;
        }
        if (c7 == 0 || c7 == 1 || c7 == 2) {
            text.setPositionAnchor(0);
        } else if (c7 == 3 || c7 == 4 || c7 == 5) {
            text.setPositionAnchor(2);
        } else {
            text.setPositionAnchor(1);
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    c8 = 0;
                    break;
                }
                c8 = 65535;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c8 = 1;
                    break;
                }
                c8 = 65535;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c8 = 2;
                    break;
                }
                c8 = 65535;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c8 = 6;
                    break;
                }
                c8 = 65535;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c8 = 7;
                    break;
                }
                c8 = 65535;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c8 = '\b';
                    break;
                }
                c8 = 65535;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c8 = 3;
                    break;
                }
                c8 = 65535;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c8 = 4;
                    break;
                }
                c8 = 65535;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c8 = 5;
                    break;
                }
                c8 = 65535;
                break;
            default:
                c8 = 65535;
                break;
        }
        if (c8 == 0 || c8 == 1 || c8 == 2) {
            text.setLineAnchor(2);
        } else if (c8 == 3 || c8 == 4 || c8 == 5) {
            text.setLineAnchor(0);
        } else {
            text.setLineAnchor(1);
        }
        return text.setPosition(getFractionalPositionForAnchorType(text.getPositionAnchor())).setLine(getFractionalPositionForAnchorType(text.getLineAnchor()), 0).build();
    }

    public static long b(Matcher matcher, int i2) {
        String group = matcher.group(i2 + 1);
        long parseLong = (Long.parseLong((String) v.checkNotNull(matcher.group(i2 + 3))) * 1000) + (Long.parseLong((String) v.checkNotNull(matcher.group(i2 + 2))) * 60000) + (group != null ? Long.parseLong(group) * DateUtils.MILLIS_PER_HOUR : 0L);
        String group2 = matcher.group(i2 + 4);
        if (group2 != null) {
            parseLong += Long.parseLong(group2);
        }
        return parseLong * 1000;
    }

    public static float getFractionalPositionForAnchorType(int i2) {
        if (i2 == 0) {
            return 0.08f;
        }
        if (i2 == 1) {
            return 0.5f;
        }
        if (i2 == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    @Override // S0.s
    public int getCueReplacementBehavior() {
        return 1;
    }

    @Override // S0.s
    public void parse(byte[] bArr, int i2, int i7, r rVar, Consumer<c> consumer) {
        String readLine;
        String str;
        a aVar = this;
        ParsableByteArray parsableByteArray = aVar.f4224c;
        parsableByteArray.reset(bArr, i2 + i7);
        parsableByteArray.setPosition(i2);
        Charset readUtfCharsetFromBom = parsableByteArray.readUtfCharsetFromBom();
        if (readUtfCharsetFromBom == null) {
            readUtfCharsetFromBom = StandardCharsets.UTF_8;
        }
        long j7 = rVar.f3276a;
        long j8 = C.TIME_UNSET;
        ArrayList arrayList = (j7 == C.TIME_UNSET || !rVar.f3277b) ? null : new ArrayList();
        while (true) {
            String readLine2 = parsableByteArray.readLine(readUtfCharsetFromBom);
            if (readLine2 == null) {
                break;
            }
            if (!readLine2.isEmpty()) {
                try {
                    Integer.parseInt(readLine2);
                    readLine = parsableByteArray.readLine(readUtfCharsetFromBom);
                } catch (NumberFormatException unused) {
                    Log.w("SubripParser", "Skipping invalid index: ".concat(readLine2));
                }
                if (readLine == null) {
                    Log.w("SubripParser", "Unexpected end");
                    break;
                }
                Matcher matcher = f4220d.matcher(readLine);
                if (matcher.matches()) {
                    long b7 = b(matcher, 1);
                    long b8 = b(matcher, 6);
                    StringBuilder sb = aVar.f4222a;
                    sb.setLength(0);
                    ArrayList arrayList2 = aVar.f4223b;
                    arrayList2.clear();
                    String readLine3 = parsableByteArray.readLine(readUtfCharsetFromBom);
                    while (!TextUtils.isEmpty(readLine3)) {
                        long j9 = j8;
                        if (sb.length() > 0) {
                            sb.append("<br>");
                        }
                        String trim = readLine3.trim();
                        StringBuilder sb2 = new StringBuilder(trim);
                        Matcher matcher2 = f4221e.matcher(trim);
                        int i8 = 0;
                        while (matcher2.find()) {
                            String group = matcher2.group();
                            arrayList2.add(group);
                            int start = matcher2.start() - i8;
                            int length = group.length();
                            sb2.replace(start, start + length, "");
                            i8 += length;
                            matcher2 = matcher2;
                            b8 = b8;
                        }
                        sb.append(sb2.toString());
                        j8 = j9;
                        readLine3 = parsableByteArray.readLine(readUtfCharsetFromBom);
                        b8 = b8;
                    }
                    long j10 = j8;
                    long j11 = b8;
                    Spanned fromHtml = Html.fromHtml(sb.toString());
                    int i9 = 0;
                    while (true) {
                        if (i9 >= arrayList2.size()) {
                            str = null;
                            break;
                        }
                        str = (String) arrayList2.get(i9);
                        if (str.matches("\\{\\\\an[1-9]\\}")) {
                            break;
                        } else {
                            i9++;
                        }
                    }
                    long j12 = rVar.f3276a;
                    if (j12 == j10 || j11 >= j12) {
                        consumer.accept(new c(ImmutableList.of(a(fromHtml, str)), b7, j11 - b7));
                    } else if (arrayList != null) {
                        arrayList.add(new c(ImmutableList.of(a(fromHtml, str)), b7, j11 - b7));
                    }
                    aVar = this;
                    j8 = j10;
                } else {
                    Log.w("SubripParser", "Skipping invalid timing: ".concat(readLine));
                    aVar = this;
                }
            }
        }
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                consumer.accept((c) it.next());
            }
        }
    }

    @Override // S0.s
    public final /* synthetic */ i parseToLegacySubtitle(byte[] bArr, int i2, int i7) {
        return o.a(this, bArr, i2, i7);
    }

    @Override // S0.s
    public final /* synthetic */ void reset() {
        o.b(this);
    }
}
