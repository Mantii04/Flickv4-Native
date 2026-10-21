package v0;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public final class i0 implements C {

    /* renamed from: a, reason: collision with root package name */
    public final int f20483a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20484b;

    /* renamed from: c, reason: collision with root package name */
    public final String f20485c;

    /* renamed from: d, reason: collision with root package name */
    public int f20486d;

    /* renamed from: e, reason: collision with root package name */
    public int f20487e;

    /* renamed from: f, reason: collision with root package name */
    public F f20488f;

    /* renamed from: g, reason: collision with root package name */
    public r0 f20489g;

    public i0(int i2, int i7, String str) {
        this.f20483a = i2;
        this.f20484b = i7;
        this.f20485c = str;
    }

    @Override // v0.C
    public final /* synthetic */ List getSniffFailureDetails() {
        return AbstractC1716B.a(this);
    }

    @Override // v0.C
    public final /* synthetic */ C getUnderlyingImplementation() {
        return AbstractC1716B.b(this);
    }

    @Override // v0.C
    public void init(F f3) {
        this.f20488f = f3;
        r0 track = f3.track(1024, 4);
        this.f20489g = track;
        Format.Builder builder = new Format.Builder();
        String str = this.f20485c;
        track.format(builder.setContainerMimeType(str).setSampleMimeType(str).build());
        this.f20488f.endTracks();
        this.f20488f.seekMap(new j0(androidx.media3.common.C.TIME_UNSET));
        this.f20487e = 1;
    }

    @Override // v0.C
    public int read(D d7, c0 c0Var) throws IOException {
        int i2 = this.f20487e;
        if (i2 != 1) {
            if (i2 == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        int sampleData = ((r0) P3.v.checkNotNull(this.f20489g)).sampleData((DataReader) d7, 1024, true);
        if (sampleData != -1) {
            this.f20486d += sampleData;
            return 0;
        }
        this.f20487e = 2;
        this.f20489g.sampleMetadata(0L, 1, this.f20486d, 0, null);
        this.f20486d = 0;
        return 0;
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        if (j7 == 0 || this.f20487e == 1) {
            this.f20487e = 1;
            this.f20486d = 0;
        }
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        int i2 = this.f20484b;
        int i7 = this.f20483a;
        P3.v.checkState((i7 == -1 || i2 == -1) ? false : true);
        ParsableByteArray parsableByteArray = new ParsableByteArray(i2);
        d7.peekFully(parsableByteArray.getData(), 0, i2);
        return parsableByteArray.readUnsignedShort() == i7;
    }

    @Override // v0.C
    public void release() {
    }
}
