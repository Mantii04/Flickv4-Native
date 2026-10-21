package e1;

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

/* renamed from: e1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0852a implements C {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f13931a = new ParsableByteArray(4);

    /* renamed from: b, reason: collision with root package name */
    public final i0 f13932b = new i0(-1, -1, MimeTypes.IMAGE_WEBP);

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
        this.f13932b.init(f3);
    }

    @Override // v0.C
    public int read(D d7, c0 c0Var) throws IOException {
        return this.f13932b.read(d7, c0Var);
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f13932b.seek(j7, j8);
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        ParsableByteArray parsableByteArray = this.f13931a;
        parsableByteArray.reset(4);
        d7.peekFully(parsableByteArray.getData(), 0, 4);
        if (parsableByteArray.readUnsignedInt() != 1380533830) {
            return false;
        }
        d7.advancePeekPosition(4);
        parsableByteArray.reset(4);
        d7.peekFully(parsableByteArray.getData(), 0, 4);
        return parsableByteArray.readUnsignedInt() == 1464156752;
    }

    @Override // v0.C
    public void release() {
    }
}
