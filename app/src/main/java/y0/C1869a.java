package y0;

import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.c0;
import v0.i0;

/* renamed from: y0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1869a implements C {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f20961a = new ParsableByteArray(4);

    /* renamed from: b, reason: collision with root package name */
    public final i0 f20962b = new i0(-1, -1, MimeTypes.IMAGE_AVIF);

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
        this.f20962b.init(f3);
    }

    @Override // v0.C
    public int read(D d7, c0 c0Var) throws IOException {
        return this.f20962b.read(d7, c0Var);
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f20962b.seek(j7, j8);
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        d7.advancePeekPosition(4);
        ParsableByteArray parsableByteArray = this.f20961a;
        parsableByteArray.reset(4);
        d7.peekFully(parsableByteArray.getData(), 0, 4);
        if (parsableByteArray.readUnsignedInt() == 1718909296) {
            parsableByteArray.reset(4);
            d7.peekFully(parsableByteArray.getData(), 0, 4);
            if (parsableByteArray.readUnsignedInt() == 1635150182) {
                return true;
            }
        }
        return false;
    }

    @Override // v0.C
    public void release() {
    }
}
