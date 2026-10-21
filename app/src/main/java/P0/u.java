package P0;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import s0.C1604B;
import s0.C1609e;
import v0.AbstractC1716B;
import v0.C1734s;
import v0.k0;
import v0.r0;

/* loaded from: classes.dex */
public final class u implements v0.C {

    /* renamed from: P, reason: collision with root package name */
    public static final byte[] f2629P = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: Q, reason: collision with root package name */
    public static final Format f2630Q = new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_EMSG).build();

    /* renamed from: A, reason: collision with root package name */
    public long f2631A;

    /* renamed from: B, reason: collision with root package name */
    public long f2632B;

    /* renamed from: C, reason: collision with root package name */
    public long f2633C;

    /* renamed from: D, reason: collision with root package name */
    public t f2634D;

    /* renamed from: E, reason: collision with root package name */
    public int f2635E;

    /* renamed from: F, reason: collision with root package name */
    public int f2636F;

    /* renamed from: G, reason: collision with root package name */
    public int f2637G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f2638H;

    /* renamed from: I, reason: collision with root package name */
    public boolean f2639I;

    /* renamed from: J, reason: collision with root package name */
    public v0.F f2640J;

    /* renamed from: K, reason: collision with root package name */
    public r0[] f2641K;

    /* renamed from: L, reason: collision with root package name */
    public r0[] f2642L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f2643M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f2644N;

    /* renamed from: O, reason: collision with root package name */
    public long f2645O;

    /* renamed from: a, reason: collision with root package name */
    public final S0.q f2646a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2647b;

    /* renamed from: c, reason: collision with root package name */
    public final J f2648c;

    /* renamed from: d, reason: collision with root package name */
    public final List f2649d;

    /* renamed from: e, reason: collision with root package name */
    public final SparseArray f2650e;

    /* renamed from: f, reason: collision with root package name */
    public final ParsableByteArray f2651f;

    /* renamed from: g, reason: collision with root package name */
    public final ParsableByteArray f2652g;

    /* renamed from: h, reason: collision with root package name */
    public final ParsableByteArray f2653h;

    /* renamed from: i, reason: collision with root package name */
    public final byte[] f2654i;

    /* renamed from: j, reason: collision with root package name */
    public final ParsableByteArray f2655j;

    /* renamed from: k, reason: collision with root package name */
    public final TimestampAdjuster f2656k;

    /* renamed from: l, reason: collision with root package name */
    public final G0.c f2657l;

    /* renamed from: m, reason: collision with root package name */
    public final ParsableByteArray f2658m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayDeque f2659n;

    /* renamed from: o, reason: collision with root package name */
    public final ArrayDeque f2660o;

    /* renamed from: p, reason: collision with root package name */
    public final C1604B f2661p;

    /* renamed from: q, reason: collision with root package name */
    public final r0 f2662q;

    /* renamed from: r, reason: collision with root package name */
    public final C1734s f2663r;

    /* renamed from: s, reason: collision with root package name */
    public ImmutableList f2664s;

    /* renamed from: t, reason: collision with root package name */
    public int f2665t;

    /* renamed from: u, reason: collision with root package name */
    public int f2666u;

    /* renamed from: v, reason: collision with root package name */
    public long f2667v;

    /* renamed from: w, reason: collision with root package name */
    public int f2668w;

    /* renamed from: x, reason: collision with root package name */
    public ParsableByteArray f2669x;

    /* renamed from: y, reason: collision with root package name */
    public long f2670y;

    /* renamed from: z, reason: collision with root package name */
    public int f2671z;

    public u(S0.q qVar, int i2) {
        this(qVar, i2, null, null, ImmutableList.of(), null);
    }

    public static DrmInitData b(ArrayList arrayList) {
        int size = arrayList.size();
        ArrayList arrayList2 = null;
        for (int i2 = 0; i2 < size; i2++) {
            C1609e c1609e = (C1609e) arrayList.get(i2);
            if (c1609e.f19913a == 1886614376) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                byte[] data = c1609e.f19912b.getData();
                UUID parseUuid = E.parseUuid(data);
                if (parseUuid == null) {
                    Log.w("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList2.add(new DrmInitData.SchemeData(parseUuid, MimeTypes.VIDEO_MP4, data));
                }
            }
        }
        if (arrayList2 == null) {
            return null;
        }
        return new DrmInitData(arrayList2);
    }

    public static void c(ParsableByteArray parsableByteArray, int i2, L l7) {
        parsableByteArray.setPosition(i2 + 8);
        int parseFullBoxFlags = AbstractC0225n.parseFullBoxFlags(parsableByteArray.readInt());
        if ((parseFullBoxFlags & 1) != 0) {
            throw ParserException.createForUnsupportedContainerFeature("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z6 = (parseFullBoxFlags & 2) != 0;
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt == 0) {
            Arrays.fill(l7.f2538l, 0, l7.f2531e, false);
            return;
        }
        if (readUnsignedIntToInt != l7.f2531e) {
            StringBuilder q6 = A.i.q(readUnsignedIntToInt, "Senc sample count ", " is different from fragment sample count");
            q6.append(l7.f2531e);
            throw ParserException.createForMalformedContainer(q6.toString(), null);
        }
        Arrays.fill(l7.f2538l, 0, readUnsignedIntToInt, z6);
        l7.initEncryptionData(parsableByteArray.bytesLeft());
        l7.fillEncryptionData(parsableByteArray);
    }

    public static int codecsToParseWithinGopSampleDependenciesAsFlags(int i2) {
        int i7 = (i2 & 1) != 0 ? 64 : 0;
        return (i2 & 2) != 0 ? i7 | 128 : i7;
    }

    public static Pair d(long j7, ParsableByteArray parsableByteArray) {
        long readUnsignedLongToLong;
        long readUnsignedLongToLong2;
        parsableByteArray.setPosition(8);
        int parseFullBoxVersion = AbstractC0225n.parseFullBoxVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(4);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (parseFullBoxVersion == 0) {
            readUnsignedLongToLong = parsableByteArray.readUnsignedInt();
            readUnsignedLongToLong2 = parsableByteArray.readUnsignedInt();
        } else {
            readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            readUnsignedLongToLong2 = parsableByteArray.readUnsignedLongToLong();
        }
        long j8 = readUnsignedLongToLong2 + j7;
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(readUnsignedLongToLong, 1000000L, readUnsignedInt);
        parsableByteArray.skipBytes(2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int[] iArr = new int[readUnsignedShort];
        long[] jArr = new long[readUnsignedShort];
        long[] jArr2 = new long[readUnsignedShort];
        long[] jArr3 = new long[readUnsignedShort];
        long j9 = j8;
        long j10 = scaleLargeTimestamp;
        int i2 = 0;
        while (i2 < readUnsignedShort) {
            int readInt = parsableByteArray.readInt();
            if ((Integer.MIN_VALUE & readInt) != 0) {
                throw ParserException.createForMalformedContainer("Unhandled indirect reference", null);
            }
            long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
            iArr[i2] = readInt & Log.LOG_LEVEL_OFF;
            jArr[i2] = j9;
            jArr3[i2] = j10;
            readUnsignedLongToLong += readUnsignedInt2;
            long[] jArr4 = jArr3;
            j10 = Util.scaleLargeTimestamp(readUnsignedLongToLong, 1000000L, readUnsignedInt);
            jArr2[i2] = j10 - jArr4[i2];
            parsableByteArray.skipBytes(4);
            j9 += iArr[i2];
            i2++;
            jArr3 = jArr4;
        }
        return Pair.create(Long.valueOf(scaleLargeTimestamp), new v0.r(iArr, jArr, jArr2, jArr3));
    }

    public final void a() {
        this.f2665t = 0;
        this.f2668w = 0;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r40v2 long[], still in use, count: 2, list:
          (r40v2 long[]) from 0x041e: AGET (r40v2 long[]), (0 ??[int, short, byte, char]) A[WRAPPED] (LINE:125)
          (r40v2 long[]) from 0x0434: PHI (r40v3 long[]) = (r40v2 long[]) binds: [B:95:0x0432] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:125)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    public final void e(long r58) {
        /*
            Method dump skipped, instructions count: 2055
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: P0.u.e(long):void");
    }

    @Override // v0.C
    public final /* synthetic */ v0.C getUnderlyingImplementation() {
        return AbstractC1716B.b(this);
    }

    @Override // v0.C
    public void init(v0.F f3) {
        int i2;
        int i7 = this.f2647b;
        this.f2640J = (i7 & 32) == 0 ? new S0.t(f3, this.f2646a) : f3;
        a();
        r0[] r0VarArr = new r0[2];
        this.f2641K = r0VarArr;
        r0 r0Var = this.f2662q;
        if (r0Var != null) {
            r0VarArr[0] = r0Var;
            i2 = 1;
        } else {
            i2 = 0;
        }
        int i8 = 100;
        if ((i7 & 4) != 0) {
            r0VarArr[i2] = this.f2640J.track(100, 5);
            i8 = 101;
            i2++;
        }
        r0[] r0VarArr2 = (r0[]) Util.nullSafeArrayCopy(this.f2641K, i2);
        this.f2641K = r0VarArr2;
        for (r0 r0Var2 : r0VarArr2) {
            r0Var2.format(f2630Q);
        }
        List list = this.f2649d;
        this.f2642L = new r0[list.size()];
        int i9 = 0;
        while (i9 < this.f2642L.length) {
            r0 track = this.f2640J.track(i8, 3);
            track.format((Format) list.get(i9));
            this.f2642L[i9] = track;
            i9++;
            i8++;
        }
        J j7 = this.f2648c;
        if (j7 != null) {
            Format.Builder buildUpon = j7.f2516g.buildUpon();
            buildUpon.setContainerMimeType(x.getContainerMimeType(j7.f2516g));
            this.f2650e.put(0, new t(this.f2640J.track(0, j7.f2511b), new M(this.f2648c, new long[0], new int[0], 0, new long[0], new int[0], new int[0], false, 0L, 0), new o(0, 0, 0, 0), buildUpon.build()));
            this.f2640J.endTracks();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:352:0x00ac, code lost:
    
        if (r32.f2665t != 3) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x00ae, code lost:
    
        r32.f2635E = r2.getCurrentSampleSize();
        r3 = r2.f2619d.f2544a.f2516g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x00c2, code lost:
    
        if (java.util.Objects.equals(r3.sampleMimeType, androidx.media3.common.MimeTypes.VIDEO_H264) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x00c6, code lost:
    
        if ((r9 & 64) == 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x00c8, code lost:
    
        r3 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x00dd, code lost:
    
        r32.f2638H = !r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x00e5, code lost:
    
        if (r2.f2621f >= r2.f2624i) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x00e7, code lost:
    
        r33.skipFully(r32.f2635E);
        r2.skipSampleEncryptionData();
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x00f3, code lost:
    
        if (r2.next() != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x00f5, code lost:
    
        r32.f2634D = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x00f8, code lost:
    
        r32.f2665t = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x00fb, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0104, code lost:
    
        if (r2.f2619d.f2544a.f2517h != r21) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0106, code lost:
    
        r32.f2635E -= 8;
        r33.skipFully(r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x011f, code lost:
    
        if (androidx.media3.common.MimeTypes.AUDIO_AC4.equals(r2.f2619d.f2544a.f2516g.sampleMimeType) == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0121, code lost:
    
        r32.f2636F = r2.outputSampleEncryptionData(r32.f2635E, 7);
        v0.AbstractC1723g.getAc4SampleHeader(r32.f2635E, r10);
        r2.f2616a.sampleData(r10, 7);
        r32.f2636F += 7;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x0146, code lost:
    
        r32.f2635E += r32.f2636F;
        r32.f2665t = 4;
        r32.f2637G = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x013c, code lost:
    
        r5 = 0;
        r32.f2636F = r2.outputSampleEncryptionData(r32.f2635E, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x00cb, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x00d6, code lost:
    
        if (java.util.Objects.equals(r3.sampleMimeType, androidx.media3.common.MimeTypes.VIDEO_H265) == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x00da, code lost:
    
        if ((r9 & 128) == 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x0151, code lost:
    
        r3 = r2.f2619d.f2544a;
        r9 = r2.getCurrentSamplePresentationTimeUs();
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x0159, code lost:
    
        if (r7 == null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x015b, code lost:
    
        r9 = r7.adjustSampleTimestamp(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x015f, code lost:
    
        r12 = r9;
        r5 = r3.f2520k;
        r11 = r2.f2616a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0164, code lost:
    
        if (r5 == 0) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0166, code lost:
    
        r5 = r32.f2652g;
        r9 = r5.getData();
        r9[0] = 0;
        r9[1] = 0;
        r9[r20] = 0;
        r10 = r3.f2520k;
        r14 = 4 - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x017e, code lost:
    
        if (r32.f2636F >= r32.f2635E) goto L470;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0180, code lost:
    
        r4 = r32.f2637G;
        r15 = r3.f2516g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x0184, code lost:
    
        if (r4 != 0) goto L468;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x020b, code lost:
    
        r22 = r2;
        r16 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x0211, code lost:
    
        if (r32.f2639I == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x0213, code lost:
    
        r2 = r32.f2653h;
        r2.reset(r4);
        r17 = r5;
        r33.readFully(r2.getData(), 0, r32.f2637G);
        r11.sampleData(r2, r32.f2637G);
        r3 = r32.f2637G;
        r3 = s0.v.unescapeStream(r2.getData(), r2.limit());
        r2.setPosition(0);
        r2.setLimit(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x0242, code lost:
    
        if (r15.maxNumReorderSamples != (-1)) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0248, code lost:
    
        if (r8.getMaxSize() == 0) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x024a, code lost:
    
        r8.setMaxSize(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x0259, code lost:
    
        r8.add(r12, r2);
        r3 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0262, code lost:
    
        if ((r22.getCurrentSampleFlags() & 4) == 0) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0264, code lost:
    
        r8.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x0267, code lost:
    
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0272, code lost:
    
        r32.f2636F += r2;
        r32.f2637G -= r2;
        r3 = r16;
        r5 = r17;
        r2 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x024e, code lost:
    
        r3 = r8.getMaxSize();
        r4 = r15.maxNumReorderSamples;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x0254, code lost:
    
        if (r3 == r4) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x0256, code lost:
    
        r8.setMaxSize(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x026a, code lost:
    
        r17 = r5;
        r3 = 4;
        r2 = r11.sampleData((androidx.media3.common.DataReader) r33, r4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x0189, code lost:
    
        if (r32.f2642L.length > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x018d, code lost:
    
        if (r32.f2638H != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x0190, code lost:
    
        r22 = r2;
        r16 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x01aa, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x01ab, code lost:
    
        r33.readFully(r9, r14, r10 + r4);
        r5.setPosition(0);
        r3 = r5.readInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x01b8, code lost:
    
        if (r3 < 0) goto L469;
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x01ba, code lost:
    
        r32.f2637G = r3 - r4;
        r3 = r32.f2651f;
        r3.setPosition(0);
        r11.sampleData(r3, 4);
        r32.f2636F += 4;
        r32.f2635E += r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x01d3, code lost:
    
        if (r32.f2642L.length <= 0) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x01d5, code lost:
    
        if (r4 <= 0) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x01dd, code lost:
    
        if (s0.v.isNalUnitSei(r15, r9[4]) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x01df, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x01e2, code lost:
    
        r32.f2639I = r2;
        r11.sampleData(r5, r4);
        r32.f2636F += r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x01ec, code lost:
    
        if (r4 <= 0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x01f0, code lost:
    
        if (r32.f2638H != false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x01f7, code lost:
    
        if (s0.v.isDependedOn(r9, 4, r4, r15) == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x01f9, code lost:
    
        r32.f2638H = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x01fc, code lost:
    
        r3 = r16;
        r2 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x01e1, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x020a, code lost:
    
        throw androidx.media3.common.ParserException.createForMalformedContainer("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:435:0x0195, code lost:
    
        r4 = s0.v.numberOfBytesInNalUnitHeader(r15);
        r22 = r2;
        r16 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x01a7, code lost:
    
        if ((r10 + r4) > (r32.f2635E - r32.f2636F)) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0285, code lost:
    
        r22 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:439:0x029c, code lost:
    
        r1 = r22.getCurrentSampleFlags();
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x02a2, code lost:
    
        if (r32.f2638H != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x02a4, code lost:
    
        r1 = r1 | androidx.media3.common.C.BUFFER_FLAG_NOT_DEPENDED_ON;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x02a7, code lost:
    
        r14 = r1;
        r1 = r22.getEncryptionBoxIfEncrypted();
     */
    /* JADX WARN: Code restructure failed: missing block: B:443:0x02ac, code lost:
    
        if (r1 == null) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x02ae, code lost:
    
        r17 = r1.f2524c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x02b5, code lost:
    
        r11.sampleMetadata(r12, r14, r32.f2635E, 0, r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x02c0, code lost:
    
        if (r6.isEmpty() != false) goto L475;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x02c2, code lost:
    
        r1 = (P0.s) r6.removeFirst();
        r32.f2671z -= r1.f2615c;
        r2 = r1.f2614b;
        r3 = r1.f2613a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x02d3, code lost:
    
        if (r2 == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x02d5, code lost:
    
        r3 = r3 + r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x02d6, code lost:
    
        if (r7 == null) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x02d8, code lost:
    
        r3 = r7.adjustSampleTimestamp(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x02dc, code lost:
    
        r26 = r3;
        r2 = r32.f2641K;
        r3 = r2.length;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:455:0x02e2, code lost:
    
        if (r4 >= r3) goto L478;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x02e4, code lost:
    
        r2[r4].sampleMetadata(r26, 1, r1.f2615c, r32.f2671z, null);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x02fc, code lost:
    
        if (r22.next() != false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x02fe, code lost:
    
        r32.f2634D = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x0301, code lost:
    
        r32.f2665t = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0306, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x02b3, code lost:
    
        r17 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x0288, code lost:
    
        r22 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x028a, code lost:
    
        r2 = r32.f2636F;
        r3 = r32.f2635E;
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x028e, code lost:
    
        if (r2 >= r3) goto L479;
     */
    /* JADX WARN: Code restructure failed: missing block: B:469:0x0290, code lost:
    
        r32.f2636F += r11.sampleData((androidx.media3.common.DataReader) r33, r3 - r2, false);
     */
    @Override // v0.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(v0.D r33, v0.c0 r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2009
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: P0.u.read(v0.D, v0.c0):int");
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        SparseArray sparseArray = this.f2650e;
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((t) sparseArray.valueAt(i2)).resetFragmentInfo();
        }
        this.f2660o.clear();
        this.f2671z = 0;
        this.f2661p.clear();
        this.f2631A = j8;
        this.f2659n.clear();
        a();
    }

    @Override // v0.C
    public boolean sniff(v0.D d7) throws IOException {
        k0 sniffFragmented = I.sniffFragmented(d7);
        this.f2664s = sniffFragmented != null ? ImmutableList.of(sniffFragmented) : ImmutableList.of();
        return sniffFragmented == null;
    }

    @Override // v0.C
    public ImmutableList<k0> getSniffFailureDetails() {
        return this.f2664s;
    }

    public u(S0.q qVar, int i2, TimestampAdjuster timestampAdjuster, J j7, List<Format> list, r0 r0Var) {
        this.f2646a = qVar;
        this.f2647b = i2;
        this.f2656k = timestampAdjuster;
        this.f2648c = j7;
        this.f2649d = Collections.unmodifiableList(list);
        this.f2662q = r0Var;
        this.f2657l = new G0.c();
        this.f2658m = new ParsableByteArray(16);
        this.f2651f = new ParsableByteArray(s0.v.f19984a);
        this.f2652g = new ParsableByteArray(6);
        this.f2653h = new ParsableByteArray();
        byte[] bArr = new byte[16];
        this.f2654i = bArr;
        this.f2655j = new ParsableByteArray(bArr);
        this.f2659n = new ArrayDeque();
        this.f2660o = new ArrayDeque();
        this.f2650e = new SparseArray();
        this.f2664s = ImmutableList.of();
        this.f2632B = androidx.media3.common.C.TIME_UNSET;
        this.f2631A = androidx.media3.common.C.TIME_UNSET;
        this.f2633C = androidx.media3.common.C.TIME_UNSET;
        this.f2640J = v0.F.f20371d;
        this.f2641K = new r0[0];
        this.f2642L = new r0[0];
        this.f2661p = new C1604B(new A0.a(this, 7));
        this.f2663r = new C1734s();
        this.f2645O = -1L;
    }

    @Override // v0.C
    public void release() {
    }

    public J modifyTrack(J j7) {
        return j7;
    }
}
