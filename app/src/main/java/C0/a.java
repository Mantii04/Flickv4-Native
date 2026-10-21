package C0;

import P0.B;
import P3.v;
import S0.q;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.c0;
import v0.f0;
import v0.l0;
import v0.n0;

/* loaded from: classes.dex */
public final class a implements C {

    /* renamed from: b, reason: collision with root package name */
    public F f350b;

    /* renamed from: c, reason: collision with root package name */
    public D f351c;

    /* renamed from: d, reason: collision with root package name */
    public l0 f352d;

    /* renamed from: e, reason: collision with root package name */
    public B f353e;

    /* renamed from: g, reason: collision with root package name */
    public int f355g;

    /* renamed from: h, reason: collision with root package name */
    public long f356h;

    /* renamed from: i, reason: collision with root package name */
    public int f357i;

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f349a = new ParsableByteArray(16);

    /* renamed from: j, reason: collision with root package name */
    public long f358j = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f354f = 0;

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
        this.f350b = f3;
    }

    @Override // v0.C
    public int read(D d7, c0 c0Var) throws IOException {
        while (true) {
            int i2 = this.f354f;
            if (i2 == 0) {
                int i7 = this.f357i;
                ParsableByteArray parsableByteArray = this.f349a;
                if (i7 == 0) {
                    if (!d7.readFully(parsableByteArray.getData(), 0, 8, true)) {
                        ((F) v.checkNotNull(this.f350b)).endTracks();
                        this.f350b.seekMap(new f0(androidx.media3.common.C.TIME_UNSET));
                        this.f354f = 4;
                        return -1;
                    }
                    this.f357i = 8;
                    parsableByteArray.setPosition(0);
                    this.f356h = parsableByteArray.readUnsignedInt();
                    this.f355g = parsableByteArray.readInt();
                }
                if (this.f356h == 1) {
                    d7.readFully(parsableByteArray.getData(), 8, 8);
                    this.f357i += 8;
                    this.f356h = parsableByteArray.readUnsignedLongToLong();
                }
                if (this.f355g == 1836086884) {
                    long position = d7.getPosition();
                    this.f358j = position;
                    long j7 = this.f357i;
                    ((F) v.checkNotNull(this.f350b)).track(1024, 4).format(new Format.Builder().setContainerMimeType(MimeTypes.IMAGE_HEIC).setMetadata(new Metadata(new E0.c(0L, position - j7, androidx.media3.common.C.TIME_UNSET, position, this.f356h - j7))).build());
                    this.f354f = 2;
                } else {
                    this.f354f = 1;
                }
            } else if (i2 == 1) {
                d7.skipFully((int) (this.f356h - this.f357i));
                this.f357i = 0;
                this.f354f = 0;
            } else {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4) {
                            return -1;
                        }
                        throw new IllegalStateException();
                    }
                    if (this.f352d == null || d7 != this.f351c) {
                        this.f351c = d7;
                        this.f352d = new l0(d7, this.f358j);
                    }
                    int read = ((B) v.checkNotNull(this.f353e)).read(this.f352d, c0Var);
                    if (read == 1) {
                        c0Var.f20439a += this.f358j;
                    }
                    return read;
                }
                if (this.f353e == null) {
                    this.f353e = new B(q.f3274a, 8);
                }
                l0 l0Var = new l0(d7, this.f358j);
                this.f352d = l0Var;
                if (this.f353e.sniff(l0Var)) {
                    this.f353e.init(new n0(this.f358j, (F) v.checkNotNull(this.f350b)));
                    this.f354f = 3;
                } else {
                    ((F) v.checkNotNull(this.f350b)).endTracks();
                    this.f350b.seekMap(new f0(androidx.media3.common.C.TIME_UNSET));
                    this.f354f = 4;
                }
            }
        }
    }

    @Override // v0.C
    public void release() {
        B b7 = this.f353e;
        if (b7 != null) {
            b7.release();
            this.f353e = null;
        }
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        if (j7 != 0) {
            if (this.f354f == 3) {
                ((B) v.checkNotNull(this.f353e)).seek(j7, j8);
                return;
            }
            return;
        }
        this.f354f = 0;
        this.f357i = 0;
        this.f358j = -1L;
        B b7 = this.f353e;
        if (b7 != null) {
            b7.release();
            this.f353e = null;
        }
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        return c.sniff(d7, true);
    }
}
