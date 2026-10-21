package c1;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.c0;
import v0.f0;

/* renamed from: c1.I, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0679I implements v0.C {

    /* renamed from: a, reason: collision with root package name */
    public final TimestampAdjuster f8580a;

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f8581b;

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f8582c;

    /* renamed from: d, reason: collision with root package name */
    public final C0677G f8583d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8584e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8585f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f8586g;

    /* renamed from: h, reason: collision with root package name */
    public long f8587h;

    /* renamed from: i, reason: collision with root package name */
    public C0676F f8588i;

    /* renamed from: j, reason: collision with root package name */
    public v0.F f8589j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8590k;

    public C0679I() {
        this(new TimestampAdjuster(0L));
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
        this.f8589j = f3;
    }

    @Override // v0.C
    public int read(v0.D d7, c0 c0Var) throws IOException {
        InterfaceC0705j interfaceC0705j;
        P3.v.checkNotNull(this.f8589j);
        long length = d7.getLength();
        C0677G c0677g = this.f8583d;
        if (length != -1 && !c0677g.isDurationReadFinished()) {
            return c0677g.readDuration(d7, c0Var);
        }
        if (!this.f8590k) {
            this.f8590k = true;
            if (c0677g.getDurationUs() != androidx.media3.common.C.TIME_UNSET) {
                C0676F c0676f = new C0676F(c0677g.getScrTimestampAdjuster(), c0677g.getDurationUs(), length);
                this.f8588i = c0676f;
                this.f8589j.seekMap(c0676f.getSeekMap());
            } else {
                this.f8589j.seekMap(new f0(c0677g.getDurationUs()));
            }
        }
        C0676F c0676f2 = this.f8588i;
        if (c0676f2 != null && c0676f2.isSeeking()) {
            return this.f8588i.handlePendingSeek(d7, c0Var);
        }
        d7.resetPeekPosition();
        long peekPosition = length != -1 ? length - d7.getPeekPosition() : -1L;
        if (peekPosition != -1 && peekPosition < 4) {
            return -1;
        }
        ParsableByteArray parsableByteArray = this.f8582c;
        if (!d7.peekFully(parsableByteArray.getData(), 0, 4, true)) {
            return -1;
        }
        parsableByteArray.setPosition(0);
        int readInt = parsableByteArray.readInt();
        if (readInt == 441) {
            return -1;
        }
        if (readInt == 442) {
            d7.peekFully(parsableByteArray.getData(), 0, 10);
            parsableByteArray.setPosition(9);
            d7.skipFully((parsableByteArray.readUnsignedByte() & 7) + 14);
            return 0;
        }
        if (readInt == 443) {
            d7.peekFully(parsableByteArray.getData(), 0, 2);
            parsableByteArray.setPosition(0);
            d7.skipFully(parsableByteArray.readUnsignedShort() + 6);
            return 0;
        }
        if (((readInt & (-256)) >> 8) != 1) {
            d7.skipFully(1);
            return 0;
        }
        int i2 = readInt & 255;
        SparseArray sparseArray = this.f8581b;
        C0678H c0678h = (C0678H) sparseArray.get(i2);
        if (!this.f8584e) {
            if (c0678h == null) {
                if (i2 == 189) {
                    interfaceC0705j = new C0697b(MimeTypes.VIDEO_PS);
                    this.f8585f = true;
                    this.f8587h = d7.getPosition();
                } else if ((readInt & 224) == 192) {
                    interfaceC0705j = new C0718w(MimeTypes.VIDEO_PS);
                    this.f8585f = true;
                    this.f8587h = d7.getPosition();
                } else if ((readInt & 240) == 224) {
                    interfaceC0705j = new C0707l(MimeTypes.VIDEO_PS);
                    this.f8586g = true;
                    this.f8587h = d7.getPosition();
                } else {
                    interfaceC0705j = null;
                }
                if (interfaceC0705j != null) {
                    interfaceC0705j.createTracks(this.f8589j, new C0692W(i2, 256));
                    c0678h = new C0678H(interfaceC0705j, this.f8580a);
                    sparseArray.put(i2, c0678h);
                }
            }
            if (d7.getPosition() > ((this.f8585f && this.f8586g) ? this.f8587h + PlaybackStateCompat.ACTION_PLAY_FROM_URI : PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                this.f8584e = true;
                this.f8589j.endTracks();
            }
        }
        d7.peekFully(parsableByteArray.getData(), 0, 2);
        parsableByteArray.setPosition(0);
        int readUnsignedShort = parsableByteArray.readUnsignedShort() + 6;
        if (c0678h == null) {
            d7.skipFully(readUnsignedShort);
            return 0;
        }
        parsableByteArray.reset(readUnsignedShort);
        d7.readFully(parsableByteArray.getData(), 0, readUnsignedShort);
        parsableByteArray.setPosition(6);
        c0678h.consume(parsableByteArray);
        parsableByteArray.setLimit(parsableByteArray.capacity());
        return 0;
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        TimestampAdjuster timestampAdjuster = this.f8580a;
        int i2 = 0;
        boolean z6 = timestampAdjuster.getTimestampOffsetUs() == androidx.media3.common.C.TIME_UNSET;
        if (!z6) {
            long firstSampleTimestampUs = timestampAdjuster.getFirstSampleTimestampUs();
            z6 = (firstSampleTimestampUs == androidx.media3.common.C.TIME_UNSET || firstSampleTimestampUs == 0 || firstSampleTimestampUs == j8) ? false : true;
        }
        if (z6) {
            timestampAdjuster.reset(j8);
        }
        C0676F c0676f = this.f8588i;
        if (c0676f != null) {
            c0676f.setSeekTargetUs(j8);
        }
        while (true) {
            SparseArray sparseArray = this.f8581b;
            if (i2 >= sparseArray.size()) {
                return;
            }
            ((C0678H) sparseArray.valueAt(i2)).seek();
            i2++;
        }
    }

    @Override // v0.C
    public boolean sniff(v0.D d7) throws IOException {
        byte[] bArr = new byte[14];
        d7.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        d7.advancePeekPosition(bArr[13] & 7);
        d7.peekFully(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    public C0679I(TimestampAdjuster timestampAdjuster) {
        this.f8580a = timestampAdjuster;
        this.f8582c = new ParsableByteArray(4096);
        this.f8581b = new SparseArray();
        this.f8583d = new C0677G();
    }

    @Override // v0.C
    public void release() {
    }
}
