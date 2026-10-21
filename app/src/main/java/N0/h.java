package N0;

import S0.q;
import S0.t;
import android.util.SparseArray;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DataReader;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.firebase.FirebaseError;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import s0.v;
import v0.AbstractC1715A;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.c0;
import v0.f0;
import v0.r0;

/* loaded from: classes.dex */
public final class h implements C {

    /* renamed from: k0, reason: collision with root package name */
    public static final byte[] f2217k0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: l0, reason: collision with root package name */
    public static final byte[] f2218l0 = Util.getUtf8Bytes("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: m0, reason: collision with root package name */
    public static final byte[] f2219m0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: n0, reason: collision with root package name */
    public static final byte[] f2220n0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};

    /* renamed from: o0, reason: collision with root package name */
    public static final UUID f2221o0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: p0, reason: collision with root package name */
    public static final Map f2222p0;

    /* renamed from: A, reason: collision with root package name */
    public int f2223A;

    /* renamed from: B, reason: collision with root package name */
    public long f2224B;

    /* renamed from: C, reason: collision with root package name */
    public final SparseArray f2225C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f2226D;

    /* renamed from: E, reason: collision with root package name */
    public long f2227E;

    /* renamed from: F, reason: collision with root package name */
    public int f2228F;

    /* renamed from: G, reason: collision with root package name */
    public long f2229G;

    /* renamed from: H, reason: collision with root package name */
    public long f2230H;

    /* renamed from: I, reason: collision with root package name */
    public int f2231I;

    /* renamed from: J, reason: collision with root package name */
    public boolean f2232J;

    /* renamed from: K, reason: collision with root package name */
    public long f2233K;

    /* renamed from: L, reason: collision with root package name */
    public long f2234L;

    /* renamed from: M, reason: collision with root package name */
    public long f2235M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f2236N;

    /* renamed from: O, reason: collision with root package name */
    public int f2237O;

    /* renamed from: P, reason: collision with root package name */
    public long f2238P;

    /* renamed from: Q, reason: collision with root package name */
    public long f2239Q;

    /* renamed from: R, reason: collision with root package name */
    public int f2240R;

    /* renamed from: S, reason: collision with root package name */
    public int f2241S;

    /* renamed from: T, reason: collision with root package name */
    public int[] f2242T;

    /* renamed from: U, reason: collision with root package name */
    public int f2243U;

    /* renamed from: V, reason: collision with root package name */
    public int f2244V;

    /* renamed from: W, reason: collision with root package name */
    public int f2245W;

    /* renamed from: X, reason: collision with root package name */
    public int f2246X;

    /* renamed from: Y, reason: collision with root package name */
    public boolean f2247Y;

    /* renamed from: Z, reason: collision with root package name */
    public long f2248Z;

    /* renamed from: a, reason: collision with root package name */
    public final b f2249a;

    /* renamed from: a0, reason: collision with root package name */
    public int f2250a0;

    /* renamed from: b, reason: collision with root package name */
    public final j f2251b;

    /* renamed from: b0, reason: collision with root package name */
    public int f2252b0;

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f2253c;

    /* renamed from: c0, reason: collision with root package name */
    public int f2254c0;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f2255d;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f2256d0;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f2257e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f2258e0;

    /* renamed from: f, reason: collision with root package name */
    public final q f2259f;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f2260f0;

    /* renamed from: g, reason: collision with root package name */
    public final ParsableByteArray f2261g;

    /* renamed from: g0, reason: collision with root package name */
    public int f2262g0;

    /* renamed from: h, reason: collision with root package name */
    public final ParsableByteArray f2263h;

    /* renamed from: h0, reason: collision with root package name */
    public byte f2264h0;

    /* renamed from: i, reason: collision with root package name */
    public final ParsableByteArray f2265i;

    /* renamed from: i0, reason: collision with root package name */
    public boolean f2266i0;

    /* renamed from: j, reason: collision with root package name */
    public final ParsableByteArray f2267j;

    /* renamed from: j0, reason: collision with root package name */
    public F f2268j0;

    /* renamed from: k, reason: collision with root package name */
    public final ParsableByteArray f2269k;

    /* renamed from: l, reason: collision with root package name */
    public final ParsableByteArray f2270l;

    /* renamed from: m, reason: collision with root package name */
    public final ParsableByteArray f2271m;

    /* renamed from: n, reason: collision with root package name */
    public final ParsableByteArray f2272n;

    /* renamed from: o, reason: collision with root package name */
    public final ParsableByteArray f2273o;

    /* renamed from: p, reason: collision with root package name */
    public final ParsableByteArray f2274p;

    /* renamed from: q, reason: collision with root package name */
    public ByteBuffer f2275q;

    /* renamed from: r, reason: collision with root package name */
    public long f2276r;

    /* renamed from: s, reason: collision with root package name */
    public long f2277s;

    /* renamed from: t, reason: collision with root package name */
    public long f2278t;

    /* renamed from: u, reason: collision with root package name */
    public long f2279u;

    /* renamed from: v, reason: collision with root package name */
    public long f2280v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f2281w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f2282x;

    /* renamed from: y, reason: collision with root package name */
    public g f2283y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f2284z;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        f2222p0 = Collections.unmodifiableMap(hashMap);
    }

    public h(q qVar, int i2) {
        b bVar = new b();
        this.f2277s = -1L;
        this.f2278t = androidx.media3.common.C.TIME_UNSET;
        this.f2279u = androidx.media3.common.C.TIME_UNSET;
        this.f2280v = androidx.media3.common.C.TIME_UNSET;
        this.f2227E = androidx.media3.common.C.TIME_UNSET;
        this.f2228F = -1;
        this.f2229G = -1L;
        this.f2230H = -1L;
        this.f2231I = -1;
        this.f2233K = -1L;
        this.f2234L = -1L;
        this.f2235M = androidx.media3.common.C.TIME_UNSET;
        this.f2249a = bVar;
        bVar.init(new d(this));
        this.f2259f = qVar;
        this.f2225C = new SparseArray();
        this.f2255d = (i2 & 1) == 0;
        this.f2257e = (i2 & 2) == 0;
        this.f2251b = new j();
        this.f2253c = new SparseArray();
        this.f2265i = new ParsableByteArray(4);
        this.f2267j = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.f2269k = new ParsableByteArray(4);
        this.f2261g = new ParsableByteArray(v.f19984a);
        this.f2263h = new ParsableByteArray(4);
        this.f2270l = new ParsableByteArray();
        this.f2271m = new ParsableByteArray();
        this.f2272n = new ParsableByteArray(8);
        this.f2273o = new ParsableByteArray();
        this.f2274p = new ParsableByteArray();
        this.f2242T = new int[1];
        this.f2282x = true;
    }

    public static byte[] d(long j7, long j8, String str) {
        P3.v.checkArgument(j7 != androidx.media3.common.C.TIME_UNSET);
        int i2 = (int) (j7 / 3600000000L);
        long j9 = j7 - (i2 * 3600000000L);
        int i7 = (int) (j9 / 60000000);
        long j10 = j9 - (i7 * 60000000);
        int i8 = (int) (j10 / 1000000);
        return Util.getUtf8Bytes(String.format(Locale.US, str, Integer.valueOf(i2), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf((int) ((j10 - (i8 * 1000000)) / j8))));
    }

    public final void a(int i2) {
        if (this.f2226D) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i2 + " must be in a Cues", null);
    }

    public final void b(int i2) {
        if (this.f2283y != null) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i2 + " must be in a TrackEntry", null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x0245, code lost:
    
        throw androidx.media3.common.ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void binaryElement(int r26, int r27, v0.D r28) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: N0.h.binaryElement(int, int, v0.D):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(N0.g r24, long r25, int r27, int r28, int r29) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: N0.h.c(N0.g, long, int, int, int):void");
    }

    public final void e() {
        if (!this.f2282x) {
            return;
        }
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.f2253c;
            if (i2 >= sparseArray.size()) {
                ((F) P3.v.checkNotNull(this.f2268j0)).endTracks();
                this.f2282x = false;
                return;
            } else if (((g) sparseArray.valueAt(i2)).f2184W) {
                return;
            } else {
                i2++;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x04a3, code lost:
    
        if (r5.equals("S_DVBSUB") == false) goto L183;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void endMasterElement(int r37) throws androidx.media3.common.ParserException {
        /*
            Method dump skipped, instructions count: 1662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: N0.h.endMasterElement(int):void");
    }

    public final void f(D d7, int i2) {
        ParsableByteArray parsableByteArray = this.f2265i;
        if (parsableByteArray.limit() >= i2) {
            return;
        }
        if (parsableByteArray.capacity() < i2) {
            parsableByteArray.ensureCapacity(Math.max(parsableByteArray.capacity() * 2, i2));
        }
        d7.readFully(parsableByteArray.getData(), parsableByteArray.limit(), i2 - parsableByteArray.limit());
        parsableByteArray.setLimit(i2);
    }

    public void floatElement(int i2, double d7) throws ParserException {
        if (i2 == 181) {
            getCurrentTrack(i2).f2180S = (int) d7;
            return;
        }
        if (i2 == 17545) {
            this.f2279u = (long) d7;
            return;
        }
        switch (i2) {
            case 21969:
                getCurrentTrack(i2).f2167F = (float) d7;
                break;
            case 21970:
                getCurrentTrack(i2).f2168G = (float) d7;
                break;
            case 21971:
                getCurrentTrack(i2).f2169H = (float) d7;
                break;
            case 21972:
                getCurrentTrack(i2).f2170I = (float) d7;
                break;
            case 21973:
                getCurrentTrack(i2).f2171J = (float) d7;
                break;
            case 21974:
                getCurrentTrack(i2).f2172K = (float) d7;
                break;
            case 21975:
                getCurrentTrack(i2).f2173L = (float) d7;
                break;
            case 21976:
                getCurrentTrack(i2).f2174M = (float) d7;
                break;
            case 21977:
                getCurrentTrack(i2).f2175N = (float) d7;
                break;
            case 21978:
                getCurrentTrack(i2).f2176O = (float) d7;
                break;
            default:
                switch (i2) {
                    case 30323:
                        getCurrentTrack(i2).f2211u = (float) d7;
                        break;
                    case 30324:
                        getCurrentTrack(i2).f2212v = (float) d7;
                        break;
                    case 30325:
                        getCurrentTrack(i2).f2213w = (float) d7;
                        break;
                }
        }
    }

    public final void g() {
        this.f2250a0 = 0;
        this.f2252b0 = 0;
        this.f2254c0 = 0;
        this.f2256d0 = false;
        this.f2258e0 = false;
        this.f2260f0 = false;
        this.f2262g0 = 0;
        this.f2264h0 = (byte) 0;
        this.f2266i0 = false;
        this.f2270l.reset(0);
    }

    public g getCurrentTrack(int i2) throws ParserException {
        b(i2);
        return this.f2283y;
    }

    public int getElementType(int i2) {
        switch (i2) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 240:
            case 241:
            case 247:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21938:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case FirebaseError.ERROR_WEAK_PASSWORD /* 17026 */:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    @Override // v0.C
    public final /* synthetic */ List getSniffFailureDetails() {
        return AbstractC1716B.a(this);
    }

    @Override // v0.C
    public final /* synthetic */ C getUnderlyingImplementation() {
        return AbstractC1716B.b(this);
    }

    public final long h(long j7) {
        long j8 = this.f2278t;
        if (j8 != androidx.media3.common.C.TIME_UNSET) {
            return Util.scaleLargeTimestamp(j7, j8, 1000L);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    public void handleBlockAddIDExtraData(g gVar, D d7, int i2) throws IOException {
        int i7 = gVar.f2198h;
        if (i7 != 1685485123 && i7 != 1685480259) {
            d7.skipFully(i2);
            return;
        }
        byte[] bArr = new byte[i2];
        gVar.f2177P = bArr;
        d7.readFully(bArr, 0, i2);
    }

    public void handleBlockAdditionalData(g gVar, int i2, D d7, int i7) throws IOException {
        if (i2 != 4 || !"V_VP9".equals(gVar.f2192c)) {
            d7.skipFully(i7);
            return;
        }
        ParsableByteArray parsableByteArray = this.f2274p;
        parsableByteArray.reset(i7);
        d7.readFully(parsableByteArray.getData(), 0, i7);
    }

    public final int i(D d7, g gVar, int i2, boolean z6) {
        int sampleData;
        int sampleData2;
        int i7;
        if ("S_TEXT/UTF8".equals(gVar.f2192c)) {
            j(d7, f2217k0, i2);
            int i8 = this.f2252b0;
            g();
            return i8;
        }
        if ("S_TEXT/ASS".equals(gVar.f2192c) || "S_TEXT/SSA".equals(gVar.f2192c)) {
            j(d7, f2219m0, i2);
            int i9 = this.f2252b0;
            g();
            return i9;
        }
        if ("S_TEXT/WEBVTT".equals(gVar.f2192c)) {
            j(d7, f2220n0, i2);
            int i10 = this.f2252b0;
            g();
            return i10;
        }
        if (gVar.f2184W) {
            P3.v.checkNotNull(gVar.f2191b0);
            if (AbstractC1715A.isSampleDtsHd(d7, i2)) {
                gVar.f2191b0 = gVar.f2191b0.buildUpon().setSampleMimeType(MimeTypes.AUDIO_DTS_HD).build();
            }
            gVar.f2189a0.format(gVar.f2191b0);
            gVar.f2184W = false;
            e();
        }
        r0 r0Var = gVar.f2189a0;
        boolean z7 = this.f2256d0;
        ParsableByteArray parsableByteArray = this.f2270l;
        if (!z7) {
            boolean z8 = gVar.f2199i;
            ParsableByteArray parsableByteArray2 = this.f2265i;
            if (z8) {
                this.f2245W &= -1073741825;
                if (!this.f2258e0) {
                    d7.readFully(parsableByteArray2.getData(), 0, 1);
                    this.f2250a0++;
                    if ((parsableByteArray2.getData()[0] & 128) == 128) {
                        throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                    }
                    this.f2264h0 = parsableByteArray2.getData()[0];
                    this.f2258e0 = true;
                }
                byte b7 = this.f2264h0;
                if ((b7 & 1) == 1) {
                    boolean z9 = (b7 & 2) == 2;
                    this.f2245W |= 1073741824;
                    if (!this.f2266i0) {
                        ParsableByteArray parsableByteArray3 = this.f2272n;
                        d7.readFully(parsableByteArray3.getData(), 0, 8);
                        this.f2250a0 += 8;
                        this.f2266i0 = true;
                        parsableByteArray2.getData()[0] = (byte) ((z9 ? 128 : 0) | 8);
                        parsableByteArray2.setPosition(0);
                        r0Var.sampleData(parsableByteArray2, 1, 1);
                        this.f2252b0++;
                        parsableByteArray3.setPosition(0);
                        r0Var.sampleData(parsableByteArray3, 8, 1);
                        this.f2252b0 += 8;
                    }
                    if (z9) {
                        if (!this.f2260f0) {
                            d7.readFully(parsableByteArray2.getData(), 0, 1);
                            this.f2250a0++;
                            parsableByteArray2.setPosition(0);
                            this.f2262g0 = parsableByteArray2.readUnsignedByte();
                            this.f2260f0 = true;
                        }
                        int i11 = this.f2262g0 * 4;
                        parsableByteArray2.reset(i11);
                        d7.readFully(parsableByteArray2.getData(), 0, i11);
                        this.f2250a0 += i11;
                        short s6 = (short) ((this.f2262g0 / 2) + 1);
                        int i12 = (s6 * 6) + 2;
                        ByteBuffer byteBuffer = this.f2275q;
                        if (byteBuffer == null || byteBuffer.capacity() < i12) {
                            this.f2275q = ByteBuffer.allocate(i12);
                        }
                        this.f2275q.position(0);
                        this.f2275q.putShort(s6);
                        int i13 = 0;
                        int i14 = 0;
                        while (true) {
                            i7 = this.f2262g0;
                            if (i13 >= i7) {
                                break;
                            }
                            int readUnsignedIntToInt = parsableByteArray2.readUnsignedIntToInt();
                            if (i13 % 2 == 0) {
                                this.f2275q.putShort((short) (readUnsignedIntToInt - i14));
                            } else {
                                this.f2275q.putInt(readUnsignedIntToInt - i14);
                            }
                            i13++;
                            i14 = readUnsignedIntToInt;
                        }
                        int i15 = (i2 - this.f2250a0) - i14;
                        if (i7 % 2 == 1) {
                            this.f2275q.putInt(i15);
                        } else {
                            this.f2275q.putShort((short) i15);
                            this.f2275q.putInt(0);
                        }
                        byte[] array = this.f2275q.array();
                        ParsableByteArray parsableByteArray4 = this.f2273o;
                        parsableByteArray4.reset(array, i12);
                        r0Var.sampleData(parsableByteArray4, i12, 1);
                        this.f2252b0 += i12;
                    }
                }
            } else {
                byte[] bArr = gVar.f2200j;
                if (bArr != null) {
                    parsableByteArray.reset(bArr, bArr.length);
                }
            }
            if ("A_OPUS".equals(gVar.f2192c) ? z6 : gVar.f2197g > 0) {
                this.f2245W |= 268435456;
                this.f2274p.reset(0);
                int limit = (parsableByteArray.limit() + i2) - this.f2250a0;
                parsableByteArray2.reset(4);
                parsableByteArray2.getData()[0] = (byte) ((limit >> 24) & 255);
                parsableByteArray2.getData()[1] = (byte) ((limit >> 16) & 255);
                parsableByteArray2.getData()[2] = (byte) ((limit >> 8) & 255);
                parsableByteArray2.getData()[3] = (byte) (limit & 255);
                r0Var.sampleData(parsableByteArray2, 4, 2);
                this.f2252b0 += 4;
            }
            this.f2256d0 = true;
        }
        int limit2 = parsableByteArray.limit() + i2;
        if (!"V_MPEG4/ISO/AVC".equals(gVar.f2192c) && !"V_MPEGH/ISO/HEVC".equals(gVar.f2192c)) {
            if (gVar.f2183V != null) {
                P3.v.checkState(parsableByteArray.limit() == 0);
                gVar.f2183V.startSample(d7);
            }
            while (true) {
                int i16 = this.f2250a0;
                if (i16 >= limit2) {
                    break;
                }
                int i17 = limit2 - i16;
                int bytesLeft = parsableByteArray.bytesLeft();
                if (bytesLeft > 0) {
                    sampleData2 = Math.min(i17, bytesLeft);
                    r0Var.sampleData(parsableByteArray, sampleData2);
                } else {
                    sampleData2 = r0Var.sampleData((DataReader) d7, i17, false);
                }
                this.f2250a0 += sampleData2;
                this.f2252b0 += sampleData2;
            }
        } else {
            ParsableByteArray parsableByteArray5 = this.f2263h;
            byte[] data = parsableByteArray5.getData();
            data[0] = 0;
            data[1] = 0;
            data[2] = 0;
            int i18 = gVar.f2193c0;
            int i19 = 4 - i18;
            while (this.f2250a0 < limit2) {
                int i20 = this.f2254c0;
                if (i20 == 0) {
                    int min = Math.min(i18, parsableByteArray.bytesLeft());
                    d7.readFully(data, i19 + min, i18 - min);
                    if (min > 0) {
                        parsableByteArray.readBytes(data, i19, min);
                    }
                    this.f2250a0 += i18;
                    parsableByteArray5.setPosition(0);
                    this.f2254c0 = parsableByteArray5.readUnsignedIntToInt();
                    ParsableByteArray parsableByteArray6 = this.f2261g;
                    parsableByteArray6.setPosition(0);
                    r0Var.sampleData(parsableByteArray6, 4);
                    this.f2252b0 += 4;
                } else {
                    int bytesLeft2 = parsableByteArray.bytesLeft();
                    if (bytesLeft2 > 0) {
                        sampleData = Math.min(i20, bytesLeft2);
                        r0Var.sampleData(parsableByteArray, sampleData);
                    } else {
                        sampleData = r0Var.sampleData((DataReader) d7, i20, false);
                    }
                    this.f2250a0 += sampleData;
                    this.f2252b0 += sampleData;
                    this.f2254c0 -= sampleData;
                }
            }
        }
        if ("A_VORBIS".equals(gVar.f2192c)) {
            ParsableByteArray parsableByteArray7 = this.f2267j;
            parsableByteArray7.setPosition(0);
            r0Var.sampleData(parsableByteArray7, 4);
            this.f2252b0 += 4;
        }
        int i21 = this.f2252b0;
        g();
        return i21;
    }

    @Override // v0.C
    public final void init(F f3) {
        if (this.f2257e) {
            f3 = new t(f3, this.f2259f);
        }
        this.f2268j0 = f3;
    }

    public void integerElement(int i2, long j7) throws ParserException {
        if (i2 == 240) {
            if (this.f2284z) {
                return;
            }
            a(i2);
            if (this.f2230H == -1) {
                this.f2230H = j7;
                return;
            }
            return;
        }
        if (i2 == 241) {
            if (this.f2284z) {
                return;
            }
            a(i2);
            if (this.f2229G == -1) {
                this.f2229G = j7;
                return;
            }
            return;
        }
        if (i2 == 20529) {
            if (j7 == 0) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingOrder " + j7 + " not supported", null);
        }
        if (i2 == 20530) {
            if (j7 == 1) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingScope " + j7 + " not supported", null);
        }
        switch (i2) {
            case 131:
                int i7 = (int) j7;
                if (i7 == 1) {
                    getCurrentTrack(i2).f2195e = 2;
                    return;
                }
                if (i7 == 2) {
                    getCurrentTrack(i2).f2195e = 1;
                    return;
                }
                if (i7 == 17) {
                    getCurrentTrack(i2).f2195e = 3;
                    return;
                } else if (i7 != 33) {
                    getCurrentTrack(i2).f2195e = -1;
                    return;
                } else {
                    getCurrentTrack(i2).f2195e = 5;
                    return;
                }
            case 136:
                getCurrentTrack(i2).f2186Y = j7 == 1;
                return;
            case 155:
                this.f2239Q = h(j7);
                return;
            case 159:
                getCurrentTrack(i2).f2178Q = (int) j7;
                return;
            case 176:
                getCurrentTrack(i2).f2204n = (int) j7;
                return;
            case 179:
                if (this.f2284z) {
                    return;
                }
                a(i2);
                this.f2227E = h(j7);
                return;
            case 186:
                getCurrentTrack(i2).f2205o = (int) j7;
                return;
            case 215:
                getCurrentTrack(i2).f2194d = (int) j7;
                return;
            case 231:
                this.f2235M = h(j7);
                return;
            case 238:
                this.f2246X = (int) j7;
                return;
            case 247:
                if (this.f2284z) {
                    return;
                }
                a(i2);
                this.f2228F = (int) j7;
                return;
            case 251:
                this.f2247Y = true;
                return;
            case 16871:
                getCurrentTrack(i2).f2198h = (int) j7;
                return;
            case 16980:
                if (j7 == 3) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentCompAlgo " + j7 + " not supported", null);
            case 17029:
                if (j7 < 1 || j7 > 2) {
                    throw ParserException.createForMalformedContainer("DocTypeReadVersion " + j7 + " not supported", null);
                }
                return;
            case 17143:
                if (j7 == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("EBMLReadVersion " + j7 + " not supported", null);
            case 18401:
                if (j7 == 5) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentEncAlgo " + j7 + " not supported", null);
            case 18408:
                if (j7 == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("AESSettingsCipherMode " + j7 + " not supported", null);
            case 21420:
                this.f2224B = j7 + this.f2277s;
                return;
            case 21432:
                int i8 = (int) j7;
                b(i2);
                if (i8 == 0) {
                    this.f2283y.f2215y = 0;
                    return;
                }
                if (i8 == 1) {
                    this.f2283y.f2215y = 2;
                    return;
                } else if (i8 == 3) {
                    this.f2283y.f2215y = 1;
                    return;
                } else {
                    if (i8 != 15) {
                        return;
                    }
                    this.f2283y.f2215y = 3;
                    return;
                }
            case 21680:
                getCurrentTrack(i2).f2207q = (int) j7;
                return;
            case 21682:
                getCurrentTrack(i2).f2209s = (int) j7;
                return;
            case 21690:
                getCurrentTrack(i2).f2208r = (int) j7;
                return;
            case 21930:
                getCurrentTrack(i2).f2185X = j7 == 1;
                return;
            case 21938:
                b(i2);
                g gVar = this.f2283y;
                gVar.f2216z = true;
                gVar.f2206p = (int) j7;
                return;
            case 21998:
                getCurrentTrack(i2).f2197g = (int) j7;
                return;
            case 22186:
                getCurrentTrack(i2).f2181T = j7;
                return;
            case 22203:
                getCurrentTrack(i2).f2182U = j7;
                return;
            case 25188:
                getCurrentTrack(i2).f2179R = (int) j7;
                return;
            case 30114:
                this.f2248Z = j7;
                return;
            case 30321:
                b(i2);
                int i9 = (int) j7;
                if (i9 == 0) {
                    this.f2283y.f2210t = 0;
                    return;
                }
                if (i9 == 1) {
                    this.f2283y.f2210t = 1;
                    return;
                } else if (i9 == 2) {
                    this.f2283y.f2210t = 2;
                    return;
                } else {
                    if (i9 != 3) {
                        return;
                    }
                    this.f2283y.f2210t = 3;
                    return;
                }
            case 2352003:
                getCurrentTrack(i2).f2196f = (int) j7;
                return;
            case 2807729:
                this.f2278t = j7;
                return;
            default:
                switch (i2) {
                    case 21945:
                        b(i2);
                        int i10 = (int) j7;
                        if (i10 == 1) {
                            this.f2283y.f2164C = 2;
                            return;
                        } else {
                            if (i10 != 2) {
                                return;
                            }
                            this.f2283y.f2164C = 1;
                            return;
                        }
                    case 21946:
                        b(i2);
                        int isoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer((int) j7);
                        if (isoTransferCharacteristicsToColorTransfer != -1) {
                            this.f2283y.f2163B = isoTransferCharacteristicsToColorTransfer;
                            return;
                        }
                        return;
                    case 21947:
                        b(i2);
                        this.f2283y.f2216z = true;
                        int isoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace((int) j7);
                        if (isoColorPrimariesToColorSpace != -1) {
                            this.f2283y.f2162A = isoColorPrimariesToColorSpace;
                            return;
                        }
                        return;
                    case 21948:
                        getCurrentTrack(i2).f2165D = (int) j7;
                        return;
                    case 21949:
                        getCurrentTrack(i2).f2166E = (int) j7;
                        return;
                    default:
                        return;
                }
        }
    }

    public boolean isLevel1Element(int i2) {
        return i2 == 357149030 || i2 == 524531317 || i2 == 475249515 || i2 == 374648427;
    }

    public final void j(D d7, byte[] bArr, int i2) {
        int length = bArr.length + i2;
        ParsableByteArray parsableByteArray = this.f2271m;
        if (parsableByteArray.capacity() < length) {
            parsableByteArray.reset(Arrays.copyOf(bArr, length + i2));
        } else {
            System.arraycopy(bArr, 0, parsableByteArray.getData(), 0, bArr.length);
        }
        d7.readFully(parsableByteArray.getData(), bArr.length, i2);
        parsableByteArray.setPosition(0);
        parsableByteArray.setLimit(length);
    }

    @Override // v0.C
    public final int read(D d7, c0 c0Var) throws IOException {
        int i2 = 0;
        this.f2236N = false;
        boolean z6 = true;
        while (z6 && !this.f2236N) {
            z6 = this.f2249a.read(d7);
            if (z6) {
                long position = d7.getPosition();
                if (this.f2232J) {
                    this.f2234L = position;
                    c0Var.f20439a = this.f2233K;
                    this.f2232J = false;
                    return 1;
                }
                if (this.f2284z) {
                    long j7 = this.f2234L;
                    if (j7 != -1) {
                        c0Var.f20439a = j7;
                        this.f2234L = -1L;
                        return 1;
                    }
                } else {
                    continue;
                }
            }
        }
        if (z6) {
            return 0;
        }
        while (true) {
            SparseArray sparseArray = this.f2253c;
            if (i2 >= sparseArray.size()) {
                return -1;
            }
            g gVar = (g) sparseArray.valueAt(i2);
            P3.v.checkNotNull(gVar.f2189a0);
            gVar.outputPendingSampleMetadata();
            i2++;
        }
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f2235M = androidx.media3.common.C.TIME_UNSET;
        int i2 = 0;
        this.f2237O = 0;
        this.f2249a.reset();
        this.f2251b.reset();
        g();
        this.f2226D = false;
        this.f2227E = androidx.media3.common.C.TIME_UNSET;
        this.f2228F = -1;
        this.f2229G = -1L;
        this.f2230H = -1L;
        if (!this.f2284z) {
            this.f2225C.clear();
        }
        while (true) {
            SparseArray sparseArray = this.f2253c;
            if (i2 >= sparseArray.size()) {
                return;
            }
            ((g) sparseArray.valueAt(i2)).reset();
            i2++;
        }
    }

    @Override // v0.C
    public final boolean sniff(D d7) throws IOException {
        return new i().sniff(d7);
    }

    public void startMasterElement(int i2, long j7, long j8) throws ParserException {
        P3.v.checkNotNull(this.f2268j0);
        if (i2 == 160) {
            this.f2247Y = false;
            this.f2248Z = 0L;
            return;
        }
        if (i2 == 174) {
            g gVar = new g();
            this.f2283y = gVar;
            gVar.f2188a = this.f2281w;
            return;
        }
        if (i2 == 183) {
            if (this.f2284z) {
                return;
            }
            a(i2);
            this.f2228F = -1;
            this.f2229G = -1L;
            this.f2230H = -1L;
            return;
        }
        if (i2 == 187) {
            if (this.f2284z) {
                return;
            }
            a(i2);
            this.f2227E = androidx.media3.common.C.TIME_UNSET;
            return;
        }
        if (i2 == 19899) {
            this.f2223A = -1;
            this.f2224B = -1L;
            return;
        }
        if (i2 == 20533) {
            getCurrentTrack(i2).f2199i = true;
            return;
        }
        if (i2 == 21968) {
            getCurrentTrack(i2).f2216z = true;
            return;
        }
        if (i2 == 408125543) {
            long j9 = this.f2277s;
            if (j9 != -1 && j9 != j7) {
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.f2277s = j7;
            this.f2276r = j8;
            return;
        }
        if (i2 == 475249515) {
            if (this.f2284z) {
                return;
            }
            this.f2226D = true;
        } else if (i2 == 524531317 && !this.f2284z) {
            if (this.f2255d && this.f2233K != -1) {
                this.f2232J = true;
            } else {
                this.f2268j0.seekMap(new f0(this.f2280v));
                this.f2284z = true;
            }
        }
    }

    public void stringElement(int i2, String str) throws ParserException {
        if (i2 == 134) {
            getCurrentTrack(i2).f2192c = str;
            return;
        }
        if (i2 != 17026) {
            if (i2 == 21358) {
                getCurrentTrack(i2).f2190b = str;
                return;
            } else {
                if (i2 != 2274716) {
                    return;
                }
                getCurrentTrack(i2).f2187Z = str;
                return;
            }
        }
        if ("webm".equals(str) || "matroska".equals(str)) {
            this.f2281w = Objects.equals(str, "webm");
            return;
        }
        throw ParserException.createForMalformedContainer("DocType " + str + " not supported", null);
    }

    @Override // v0.C
    public final void release() {
    }
}
