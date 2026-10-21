package D0;

import androidx.media3.common.MimeTypes;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.c0;
import v0.i0;

/* loaded from: classes.dex */
public final class a implements C {

    /* renamed from: a, reason: collision with root package name */
    public final C f833a;

    public a(int i2) {
        if ((i2 & 1) != 0) {
            this.f833a = new i0(65496, 2, MimeTypes.IMAGE_JPEG);
        } else {
            this.f833a = new b();
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

    @Override // v0.C
    public void init(F f3) {
        this.f833a.init(f3);
    }

    @Override // v0.C
    public int read(D d7, c0 c0Var) throws IOException {
        return this.f833a.read(d7, c0Var);
    }

    @Override // v0.C
    public void release() {
        this.f833a.release();
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f833a.seek(j7, j8);
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        return this.f833a.sniff(d7);
    }
}
