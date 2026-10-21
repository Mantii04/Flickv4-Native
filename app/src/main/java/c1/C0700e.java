package c1;

import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;

/* renamed from: c1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0700e implements v0.C {

    /* renamed from: a, reason: collision with root package name */
    public final int f8693a;

    /* renamed from: b, reason: collision with root package name */
    public final C0701f f8694b;

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f8695c;

    /* renamed from: d, reason: collision with root package name */
    public final ParsableByteArray f8696d;

    /* renamed from: e, reason: collision with root package name */
    public final ParsableBitArray f8697e;

    /* renamed from: f, reason: collision with root package name */
    public v0.F f8698f;

    /* renamed from: g, reason: collision with root package name */
    public long f8699g;

    /* renamed from: h, reason: collision with root package name */
    public long f8700h;

    /* renamed from: i, reason: collision with root package name */
    public int f8701i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8702j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8703k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f8704l;

    public C0700e() {
        this(0);
    }

    public final int a(v0.D d7) {
        int i2 = 0;
        while (true) {
            ParsableByteArray parsableByteArray = this.f8696d;
            d7.peekFully(parsableByteArray.getData(), 0, 10);
            parsableByteArray.setPosition(0);
            if (parsableByteArray.readUnsignedInt24() != 4801587) {
                break;
            }
            parsableByteArray.skipBytes(3);
            int readSynchSafeInt = parsableByteArray.readSynchSafeInt();
            i2 += readSynchSafeInt + 10;
            d7.advancePeekPosition(readSynchSafeInt);
        }
        d7.resetPeekPosition();
        d7.advancePeekPosition(i2);
        if (this.f8700h == -1) {
            this.f8700h = i2;
        }
        return i2;
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
        this.f8698f = f3;
        this.f8694b.createTracks(f3, new C0692W(0, 1));
        f3.endTracks();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0113 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b5  */
    @Override // v0.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(v0.D r21, v0.c0 r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c1.C0700e.read(v0.D, v0.c0):int");
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f8703k = false;
        this.f8694b.seek();
        this.f8699g = j8;
    }

    @Override // v0.C
    public boolean sniff(v0.D d7) throws IOException {
        int a7 = a(d7);
        int i2 = a7;
        int i7 = 0;
        int i8 = 0;
        do {
            ParsableByteArray parsableByteArray = this.f8696d;
            d7.peekFully(parsableByteArray.getData(), 0, 2);
            parsableByteArray.setPosition(0);
            if (C0701f.isAdtsSyncWord(parsableByteArray.readUnsignedShort())) {
                i7++;
                if (i7 >= 4 && i8 > 188) {
                    return true;
                }
                d7.peekFully(parsableByteArray.getData(), 0, 4);
                ParsableBitArray parsableBitArray = this.f8697e;
                parsableBitArray.setPosition(14);
                int readBits = parsableBitArray.readBits(13);
                if (readBits <= 6) {
                    i2++;
                    d7.resetPeekPosition();
                    d7.advancePeekPosition(i2);
                } else {
                    d7.advancePeekPosition(readBits - 6);
                    i8 += readBits;
                }
            } else {
                i2++;
                d7.resetPeekPosition();
                d7.advancePeekPosition(i2);
            }
            i7 = 0;
            i8 = 0;
        } while (i2 - a7 < 8192);
        return false;
    }

    public C0700e(int i2) {
        this.f8693a = (i2 & 2) != 0 ? i2 | 1 : i2;
        this.f8694b = new C0701f(true, MimeTypes.AUDIO_AAC);
        this.f8695c = new ParsableByteArray(2048);
        this.f8701i = -1;
        this.f8700h = -1L;
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        this.f8696d = parsableByteArray;
        this.f8697e = new ParsableBitArray(parsableByteArray.getData());
    }

    @Override // v0.C
    public void release() {
    }
}
