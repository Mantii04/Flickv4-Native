package c1;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import v0.AbstractC1716B;
import v0.c0;
import v0.f0;

/* renamed from: c1.S, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0688S implements v0.C {

    /* renamed from: a, reason: collision with root package name */
    public final int f8621a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8622b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8623c;

    /* renamed from: d, reason: collision with root package name */
    public final List f8624d;

    /* renamed from: e, reason: collision with root package name */
    public final ParsableByteArray f8625e;

    /* renamed from: f, reason: collision with root package name */
    public final SparseIntArray f8626f;

    /* renamed from: g, reason: collision with root package name */
    public final InterfaceC0691V f8627g;

    /* renamed from: h, reason: collision with root package name */
    public final S0.q f8628h;

    /* renamed from: i, reason: collision with root package name */
    public final SparseArray f8629i;

    /* renamed from: j, reason: collision with root package name */
    public final SparseBooleanArray f8630j;

    /* renamed from: k, reason: collision with root package name */
    public final SparseBooleanArray f8631k;

    /* renamed from: l, reason: collision with root package name */
    public final C0685O f8632l;

    /* renamed from: m, reason: collision with root package name */
    public C0684N f8633m;

    /* renamed from: n, reason: collision with root package name */
    public v0.F f8634n;

    /* renamed from: o, reason: collision with root package name */
    public int f8635o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f8636p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f8637q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f8638r;

    /* renamed from: s, reason: collision with root package name */
    public InterfaceC0693X f8639s;

    /* renamed from: t, reason: collision with root package name */
    public int f8640t;

    /* renamed from: u, reason: collision with root package name */
    public int f8641u;

    public C0688S(int i2, int i7, S0.q qVar, TimestampAdjuster timestampAdjuster, InterfaceC0691V interfaceC0691V, int i8) {
        InterfaceC0691V interfaceC0691V2 = (InterfaceC0691V) P3.v.checkNotNull(interfaceC0691V);
        this.f8627g = interfaceC0691V2;
        this.f8623c = i8;
        this.f8621a = i2;
        this.f8622b = i7;
        this.f8628h = qVar;
        if (i2 == 1 || i2 == 2) {
            this.f8624d = Collections.singletonList(timestampAdjuster);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f8624d = arrayList;
            arrayList.add(timestampAdjuster);
        }
        this.f8625e = new ParsableByteArray(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f8630j = sparseBooleanArray;
        this.f8631k = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.f8629i = sparseArray;
        this.f8626f = new SparseIntArray();
        this.f8632l = new C0685O(i8);
        this.f8634n = v0.F.f20371d;
        this.f8641u = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray<InterfaceC0693X> createInitialPayloadReaders = ((C0702g) interfaceC0691V2).createInitialPayloadReaders();
        int size = createInitialPayloadReaders.size();
        for (int i9 = 0; i9 < size; i9++) {
            sparseArray.put(createInitialPayloadReaders.keyAt(i9), createInitialPayloadReaders.valueAt(i9));
        }
        sparseArray.put(0, new C0681K(new C0686P(this)));
        this.f8639s = null;
    }

    @Override // v0.C
    public final /* synthetic */ List getSniffFailureDetails() {
        return AbstractC1716B.a(this);
    }

    @Override // v0.C
    public final /* synthetic */ v0.C getUnderlyingImplementation() {
        return AbstractC1716B.b(this);
    }

    @Override // v0.C
    public void init(v0.F f3) {
        if ((this.f8622b & 1) == 0) {
            f3 = new S0.t(f3, this.f8628h);
        }
        this.f8634n = f3;
    }

    @Override // v0.C
    public int read(v0.D d7, c0 c0Var) throws IOException {
        boolean z6;
        long length = d7.getLength();
        int i2 = this.f8621a;
        boolean z7 = i2 == 2;
        if (this.f8636p) {
            C0685O c0685o = this.f8632l;
            if (length != -1 && !z7 && !c0685o.isDurationReadFinished()) {
                return c0685o.readDuration(d7, c0Var, this.f8641u);
            }
            if (!this.f8637q) {
                this.f8637q = true;
                if (c0685o.getDurationUs() != androidx.media3.common.C.TIME_UNSET) {
                    C0684N c0684n = new C0684N(c0685o.getPcrTimestampAdjuster(), c0685o.getDurationUs(), length, this.f8641u, this.f8623c);
                    this.f8633m = c0684n;
                    this.f8634n.seekMap(c0684n.getSeekMap());
                } else {
                    this.f8634n.seekMap(new f0(c0685o.getDurationUs()));
                }
            }
            if (this.f8638r) {
                this.f8638r = false;
                seek(0L, 0L);
                if (d7.getPosition() != 0) {
                    c0Var.f20439a = 0L;
                    return 1;
                }
            }
            C0684N c0684n2 = this.f8633m;
            if (c0684n2 != null && c0684n2.isSeeking()) {
                return this.f8633m.handlePendingSeek(d7, c0Var);
            }
        }
        ParsableByteArray parsableByteArray = this.f8625e;
        byte[] data = parsableByteArray.getData();
        if (9400 - parsableByteArray.getPosition() < 188) {
            int bytesLeft = parsableByteArray.bytesLeft();
            if (bytesLeft > 0) {
                System.arraycopy(data, parsableByteArray.getPosition(), data, 0, bytesLeft);
            }
            parsableByteArray.reset(data, bytesLeft);
        }
        while (true) {
            int bytesLeft2 = parsableByteArray.bytesLeft();
            SparseArray sparseArray = this.f8629i;
            if (bytesLeft2 >= 188) {
                int position = parsableByteArray.getPosition();
                int limit = parsableByteArray.limit();
                int findSyncBytePosition = AbstractC0694Y.findSyncBytePosition(parsableByteArray.getData(), position, limit);
                parsableByteArray.setPosition(findSyncBytePosition);
                int i7 = findSyncBytePosition + 188;
                if (i7 > limit) {
                    int i8 = (findSyncBytePosition - position) + this.f8640t;
                    this.f8640t = i8;
                    if (i2 == 2 && i8 > 376) {
                        throw ParserException.createForMalformedContainer("Cannot find sync byte. Most likely not a Transport Stream.", null);
                    }
                } else {
                    this.f8640t = 0;
                }
                int limit2 = parsableByteArray.limit();
                if (i7 > limit2) {
                    return 0;
                }
                int readInt = parsableByteArray.readInt();
                if ((8388608 & readInt) != 0) {
                    parsableByteArray.setPosition(i7);
                    return 0;
                }
                int i9 = (4194304 & readInt) != 0 ? 1 : 0;
                int i10 = (2096896 & readInt) >> 8;
                boolean z8 = (readInt & 32) != 0;
                InterfaceC0693X interfaceC0693X = (readInt & 16) != 0 ? (InterfaceC0693X) sparseArray.get(i10) : null;
                if (interfaceC0693X == null) {
                    parsableByteArray.setPosition(i7);
                    return 0;
                }
                if (i2 != 2) {
                    int i11 = readInt & 15;
                    SparseIntArray sparseIntArray = this.f8626f;
                    z6 = true;
                    int i12 = sparseIntArray.get(i10, i11 - 1);
                    sparseIntArray.put(i10, i11);
                    if (i12 == i11) {
                        parsableByteArray.setPosition(i7);
                        return 0;
                    }
                    if (i11 != ((i12 + 1) & 15)) {
                        interfaceC0693X.seek();
                    }
                } else {
                    z6 = true;
                }
                if (z8) {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    i9 |= (parsableByteArray.readUnsignedByte() & 64) != 0 ? 2 : 0;
                    parsableByteArray.skipBytes(readUnsignedByte - 1);
                }
                boolean z9 = this.f8636p;
                if (i2 == 2 || z9 || !this.f8631k.get(i10, false)) {
                    parsableByteArray.setLimit(i7);
                    interfaceC0693X.consume(parsableByteArray, i9);
                    parsableByteArray.setLimit(limit2);
                }
                if (i2 != 2 && !z9 && this.f8636p && length != -1) {
                    this.f8638r = z6;
                }
                parsableByteArray.setPosition(i7);
                return 0;
            }
            int limit3 = parsableByteArray.limit();
            int read = d7.read(data, limit3, 9400 - limit3);
            if (read == -1) {
                for (int i13 = 0; i13 < sparseArray.size(); i13++) {
                    InterfaceC0693X interfaceC0693X2 = (InterfaceC0693X) sparseArray.valueAt(i13);
                    if (interfaceC0693X2 instanceof C0674D) {
                        C0674D c0674d = (C0674D) interfaceC0693X2;
                        if (c0674d.canConsumeSynthesizedEmptyPusi(z7)) {
                            c0674d.consume(new ParsableByteArray(), 1);
                        }
                    }
                }
                return -1;
            }
            parsableByteArray.setLimit(limit3 + read);
        }
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        C0684N c0684n;
        P3.v.checkState(this.f8621a != 2);
        List list = this.f8624d;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            TimestampAdjuster timestampAdjuster = (TimestampAdjuster) list.get(i2);
            boolean z6 = timestampAdjuster.getTimestampOffsetUs() == androidx.media3.common.C.TIME_UNSET;
            if (!z6) {
                long firstSampleTimestampUs = timestampAdjuster.getFirstSampleTimestampUs();
                z6 = (firstSampleTimestampUs == androidx.media3.common.C.TIME_UNSET || firstSampleTimestampUs == 0 || firstSampleTimestampUs == j8) ? false : true;
            }
            if (z6) {
                timestampAdjuster.reset(j8);
            }
        }
        if (j8 != 0 && (c0684n = this.f8633m) != null) {
            c0684n.setSeekTargetUs(j8);
        }
        this.f8625e.reset(0);
        this.f8626f.clear();
        int i7 = 0;
        while (true) {
            SparseArray sparseArray = this.f8629i;
            if (i7 >= sparseArray.size()) {
                this.f8640t = 0;
                return;
            } else {
                ((InterfaceC0693X) sparseArray.valueAt(i7)).seek();
                i7++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        r1 = r1 + 1;
     */
    @Override // v0.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean sniff(v0.D r7) throws java.io.IOException {
        /*
            r6 = this;
            androidx.media3.common.util.ParsableByteArray r0 = r6.f8625e
            byte[] r0 = r0.getData()
            r1 = 940(0x3ac, float:1.317E-42)
            r2 = 0
            r7.peekFully(r0, r2, r1)
            r1 = r2
        Ld:
            r3 = 188(0xbc, float:2.63E-43)
            if (r1 >= r3) goto L29
            r3 = r2
        L12:
            r4 = 5
            if (r3 >= r4) goto L24
            int r4 = r3 * 188
            int r4 = r4 + r1
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L21
            int r1 = r1 + 1
            goto Ld
        L21:
            int r3 = r3 + 1
            goto L12
        L24:
            r7.skipFully(r1)
            r7 = 1
            return r7
        L29:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c1.C0688S.sniff(v0.D):boolean");
    }

    @Override // v0.C
    public void release() {
    }
}
