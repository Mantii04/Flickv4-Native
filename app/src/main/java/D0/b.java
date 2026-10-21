package D0;

import P0.B;
import P3.v;
import S0.q;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.c0;
import v0.f0;
import v0.l0;
import v0.n0;

/* loaded from: classes.dex */
public final class b implements C {

    /* renamed from: b, reason: collision with root package name */
    public F f835b;

    /* renamed from: c, reason: collision with root package name */
    public int f836c;

    /* renamed from: d, reason: collision with root package name */
    public int f837d;

    /* renamed from: e, reason: collision with root package name */
    public int f838e;

    /* renamed from: g, reason: collision with root package name */
    public E0.c f840g;

    /* renamed from: h, reason: collision with root package name */
    public D f841h;

    /* renamed from: i, reason: collision with root package name */
    public l0 f842i;

    /* renamed from: j, reason: collision with root package name */
    public B f843j;

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f834a = new ParsableByteArray(2);

    /* renamed from: f, reason: collision with root package name */
    public long f839f = -1;

    public final void a() {
        ((F) v.checkNotNull(this.f835b)).endTracks();
        this.f835b.seekMap(new f0(androidx.media3.common.C.TIME_UNSET));
        this.f836c = 6;
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
        this.f835b = f3;
    }

    @Override // v0.C
    public int read(D d7, c0 c0Var) throws IOException {
        String readNullTerminatedString;
        d parse;
        int i2 = this.f836c;
        ParsableByteArray parsableByteArray = this.f834a;
        if (i2 == 0) {
            parsableByteArray.reset(2);
            d7.readFully(parsableByteArray.getData(), 0, 2);
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            this.f837d = readUnsignedShort;
            if (readUnsignedShort == 65498) {
                if (this.f839f != -1) {
                    this.f836c = 4;
                    return 0;
                }
                a();
                return 0;
            }
            if ((readUnsignedShort < 65488 || readUnsignedShort > 65497) && readUnsignedShort != 65281) {
                this.f836c = 1;
            }
            return 0;
        }
        if (i2 == 1) {
            parsableByteArray.reset(2);
            d7.peekFully(parsableByteArray.getData(), 0, 2);
            this.f838e = parsableByteArray.readUnsignedShort() - 2;
            d7.skipFully(2);
            this.f836c = 2;
            return 0;
        }
        if (i2 == 2) {
            if (this.f837d == 65505) {
                ParsableByteArray parsableByteArray2 = new ParsableByteArray(this.f838e);
                d7.readFully(parsableByteArray2.getData(), 0, this.f838e);
                if (this.f840g == null && "http://ns.adobe.com/xap/1.0/".equals(parsableByteArray2.readNullTerminatedString()) && (readNullTerminatedString = parsableByteArray2.readNullTerminatedString()) != null) {
                    long length = d7.getLength();
                    E0.c cVar = null;
                    if (length != -1 && (parse = e.parse(readNullTerminatedString)) != null) {
                        cVar = parse.getMotionPhotoMetadata(length);
                    }
                    this.f840g = cVar;
                    if (cVar != null) {
                        this.f839f = cVar.f1580d;
                    }
                }
            } else {
                d7.skipFully(this.f838e);
            }
            this.f836c = 0;
            return 0;
        }
        if (i2 != 4) {
            if (i2 != 5) {
                if (i2 == 6) {
                    return -1;
                }
                throw new IllegalStateException();
            }
            if (this.f842i == null || d7 != this.f841h) {
                this.f841h = d7;
                this.f842i = new l0(d7, this.f839f);
            }
            int read = ((B) v.checkNotNull(this.f843j)).read(this.f842i, c0Var);
            if (read == 1) {
                c0Var.f20439a += this.f839f;
            }
            return read;
        }
        long position = d7.getPosition();
        long j7 = this.f839f;
        if (position != j7) {
            c0Var.f20439a = j7;
            return 1;
        }
        if (!d7.peekFully(parsableByteArray.getData(), 0, 1, true)) {
            a();
            return 0;
        }
        d7.resetPeekPosition();
        if (this.f843j == null) {
            this.f843j = new B(q.f3274a, 8);
        }
        l0 l0Var = new l0(d7, this.f839f);
        this.f842i = l0Var;
        if (!this.f843j.sniff(l0Var)) {
            a();
            return 0;
        }
        this.f843j.init(new n0(this.f839f, (F) v.checkNotNull(this.f835b)));
        ((F) v.checkNotNull(this.f835b)).track(1024, 4).format(new Format.Builder().setContainerMimeType(MimeTypes.IMAGE_JPEG).setMetadata(new Metadata((E0.c) v.checkNotNull(this.f840g))).build());
        this.f836c = 5;
        return 0;
    }

    @Override // v0.C
    public void release() {
        B b7 = this.f843j;
        if (b7 != null) {
            b7.release();
        }
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        if (j7 == 0) {
            this.f836c = 0;
            this.f843j = null;
        } else if (this.f836c == 5) {
            ((B) v.checkNotNull(this.f843j)).seek(j7, j8);
        }
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        ParsableByteArray parsableByteArray = this.f834a;
        parsableByteArray.reset(2);
        d7.peekFully(parsableByteArray.getData(), 0, 2);
        if (parsableByteArray.readUnsignedShort() == 65496) {
            while (true) {
                parsableByteArray.reset(2);
                d7.peekFully(parsableByteArray.getData(), 0, 2);
                int readUnsignedShort = parsableByteArray.readUnsignedShort();
                this.f837d = readUnsignedShort;
                if (readUnsignedShort == 65498) {
                    break;
                }
                parsableByteArray.reset(2);
                d7.peekFully(parsableByteArray.getData(), 0, 2);
                int readUnsignedShort2 = parsableByteArray.readUnsignedShort() - 2;
                if (readUnsignedShort2 < 0) {
                    break;
                }
                if (this.f837d != 65505) {
                    d7.advancePeekPosition(readUnsignedShort2);
                } else {
                    parsableByteArray.reset(readUnsignedShort2);
                    d7.peekFully(parsableByteArray.getData(), 0, readUnsignedShort2);
                    if (!Objects.equals(parsableByteArray.readNullTerminatedString(), "http://ns.adobe.com/xap/1.0/") ? false : e.isMotionPhotoXmp(parsableByteArray.readNullTerminatedString())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
