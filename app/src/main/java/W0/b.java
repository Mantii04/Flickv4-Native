package W0;

import P3.AbstractC0226a;
import P3.v;
import S0.i;
import S0.o;
import S0.s;
import androidx.media3.common.C;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.Renderer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class b implements s {

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f4081g = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4082a;

    /* renamed from: b, reason: collision with root package name */
    public final a f4083b;

    /* renamed from: d, reason: collision with root package name */
    public LinkedHashMap f4085d;

    /* renamed from: e, reason: collision with root package name */
    public float f4086e = -3.4028235E38f;

    /* renamed from: f, reason: collision with root package name */
    public float f4087f = -3.4028235E38f;

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f4084c = new ParsableByteArray();

    public b(List<byte[]> list) {
        if (list == null || list.isEmpty()) {
            this.f4082a = false;
            this.f4083b = null;
            return;
        }
        this.f4082a = true;
        String fromUtf8Bytes = Util.fromUtf8Bytes(list.get(0));
        v.checkArgument(fromUtf8Bytes.startsWith("Format:"));
        this.f4083b = (a) v.checkNotNull(a.fromFormatLine(fromUtf8Bytes));
        b(new ParsableByteArray(list.get(1)), StandardCharsets.UTF_8);
    }

    public static int a(long j7, ArrayList arrayList, ArrayList arrayList2) {
        int i2;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i2 = 0;
                break;
            }
            if (((Long) arrayList.get(size)).longValue() == j7) {
                return size;
            }
            if (((Long) arrayList.get(size)).longValue() < j7) {
                i2 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i2, Long.valueOf(j7));
        arrayList2.add(i2, i2 == 0 ? new ArrayList() : new ArrayList((Collection) arrayList2.get(i2 - 1)));
        return i2;
    }

    public static long c(String str) {
        Matcher matcher = f4081g.matcher(str.trim());
        if (!matcher.matches()) {
            return C.TIME_UNSET;
        }
        return (Long.parseLong((String) Util.castNonNull(matcher.group(4))) * Renderer.DEFAULT_DURATION_TO_PROGRESS_US) + (Long.parseLong((String) Util.castNonNull(matcher.group(3))) * 1000000) + (Long.parseLong((String) Util.castNonNull(matcher.group(2))) * 60000000) + (Long.parseLong((String) Util.castNonNull(matcher.group(1))) * 3600000000L);
    }

    public final void b(ParsableByteArray parsableByteArray, Charset charset) {
        while (true) {
            String readLine = parsableByteArray.readLine(charset);
            if (readLine == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(readLine)) {
                while (true) {
                    String readLine2 = parsableByteArray.readLine(charset);
                    if (readLine2 != null && (parsableByteArray.bytesLeft() == 0 || parsableByteArray.peekCodePoint(charset) != 91)) {
                        String[] split = readLine2.split(":");
                        if (split.length == 2) {
                            String lowerCase = AbstractC0226a.toLowerCase(split[0].trim());
                            lowerCase.getClass();
                            if (lowerCase.equals("playresx")) {
                                this.f4086e = Float.parseFloat(split[1].trim());
                            } else if (lowerCase.equals("playresy")) {
                                try {
                                    this.f4087f = Float.parseFloat(split[1].trim());
                                } catch (NumberFormatException unused) {
                                }
                            }
                        }
                    }
                }
            } else if ("[V4+ Styles]".equalsIgnoreCase(readLine)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                c cVar = null;
                while (true) {
                    String readLine3 = parsableByteArray.readLine(charset);
                    if (readLine3 == null || (parsableByteArray.bytesLeft() != 0 && parsableByteArray.peekCodePoint(charset) == 91)) {
                        break;
                    }
                    if (readLine3.startsWith("Format:")) {
                        cVar = c.fromFormatLine(readLine3);
                    } else if (readLine3.startsWith("Style:")) {
                        if (cVar == null) {
                            Log.w("SsaParser", "Skipping 'Style:' line before 'Format:' line: ".concat(readLine3));
                        } else {
                            e fromStyleLine = e.fromStyleLine(readLine3, cVar);
                            if (fromStyleLine != null) {
                                linkedHashMap.put(fromStyleLine.f4105a, fromStyleLine);
                            }
                        }
                    }
                }
                this.f4085d = linkedHashMap;
            } else if ("[V4 Styles]".equalsIgnoreCase(readLine)) {
                Log.i("SsaParser", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(readLine)) {
                return;
            }
        }
    }

    @Override // S0.s
    public int getCueReplacementBehavior() {
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c3  */
    @Override // S0.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parse(byte[] r26, int r27, int r28, S0.r r29, androidx.media3.common.util.Consumer<S0.c> r30) {
        /*
            Method dump skipped, instructions count: 910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: W0.b.parse(byte[], int, int, S0.r, androidx.media3.common.util.Consumer):void");
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
