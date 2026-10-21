package A0;

import java.io.IOException;
import v0.AbstractC1730n;
import v0.C1729m;
import v0.D;
import v0.InterfaceC1731o;
import v0.J;
import v0.K;
import v0.P;

/* loaded from: classes.dex */
public final class b implements InterfaceC1731o {

    /* renamed from: a, reason: collision with root package name */
    public final P f4a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5b;

    /* renamed from: c, reason: collision with root package name */
    public final J f6c = new J();

    public b(P p6, int i2) {
        this.f4a = p6;
        this.f5b = i2;
    }

    public final long a(D d7) {
        P p6;
        J j7;
        while (true) {
            long peekPosition = d7.getPeekPosition();
            long length = d7.getLength() - 6;
            p6 = this.f4a;
            j7 = this.f6c;
            if (peekPosition >= length || K.checkFrameHeaderFromPeek(d7, p6, this.f5b, j7)) {
                break;
            }
            d7.advancePeekPosition(1);
        }
        if (d7.getPeekPosition() < d7.getLength() - 6) {
            return j7.f20373a;
        }
        d7.advancePeekPosition((int) (d7.getLength() - d7.getPeekPosition()));
        return p6.f20388j;
    }

    @Override // v0.InterfaceC1731o
    public final /* synthetic */ void onSeekFinished() {
        AbstractC1730n.a(this);
    }

    @Override // v0.InterfaceC1731o
    public C1729m searchForTimestamp(D d7, long j7) throws IOException {
        long position = d7.getPosition();
        long a7 = a(d7);
        long peekPosition = d7.getPeekPosition();
        d7.advancePeekPosition(Math.max(6, this.f4a.f20381c));
        long a8 = a(d7);
        return (a7 > j7 || a8 <= j7) ? a8 <= j7 ? C1729m.underestimatedResult(a8, d7.getPeekPosition()) : C1729m.overestimatedResult(a7, position) : C1729m.targetFoundResult(peekPosition);
    }
}
