package v0;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* renamed from: v0.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1732p {

    /* renamed from: a, reason: collision with root package name */
    public final C1725i f20509a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1731o f20510b;

    /* renamed from: c, reason: collision with root package name */
    public C1727k f20511c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20512d;

    public AbstractC1732p(InterfaceC1728l interfaceC1728l, InterfaceC1731o interfaceC1731o, long j7, long j8, long j9, long j10, long j11, long j12, int i2) {
        this.f20510b = interfaceC1731o;
        this.f20512d = i2;
        this.f20509a = new C1725i(interfaceC1728l, j7, j8, j9, j10, j11, j12);
    }

    public C1727k createSeekParamsForTargetTimeUs(long j7) {
        C1725i c1725i = this.f20509a;
        return new C1727k(j7, c1725i.timeUsToTargetTime(j7), c1725i.f20478c, c1725i.f20479d, c1725i.f20480e, c1725i.f20481f, c1725i.f20482g);
    }

    public final g0 getSeekMap() {
        return this.f20509a;
    }

    public int handlePendingSeek(D d7, c0 c0Var) throws IOException {
        while (true) {
            C1727k c1727k = (C1727k) P3.v.checkNotNull(this.f20511c);
            long j7 = c1727k.f20497f;
            long j8 = c1727k.f20498g;
            long j9 = c1727k.f20499h;
            if (j8 - j7 <= this.f20512d) {
                markSeekOperationFinished(false, j7);
                return seekToPosition(d7, j7, c0Var);
            }
            if (!skipInputUntilPosition(d7, j9)) {
                return seekToPosition(d7, j9, c0Var);
            }
            d7.resetPeekPosition();
            C1729m searchForTimestamp = this.f20510b.searchForTimestamp(d7, c1727k.f20493b);
            int i2 = searchForTimestamp.f20502a;
            if (i2 == -3) {
                markSeekOperationFinished(false, j9);
                return seekToPosition(d7, j9, c0Var);
            }
            long j10 = searchForTimestamp.f20503b;
            long j11 = searchForTimestamp.f20504c;
            if (i2 == -2) {
                c1727k.f20495d = j10;
                c1727k.f20497f = j11;
                c1727k.f20499h = C1727k.calculateNextSearchBytePosition(c1727k.f20493b, j10, c1727k.f20496e, j11, c1727k.f20498g, c1727k.f20494c);
            } else {
                if (i2 != -1) {
                    if (i2 != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    skipInputUntilPosition(d7, j11);
                    markSeekOperationFinished(true, j11);
                    return seekToPosition(d7, j11, c0Var);
                }
                c1727k.f20496e = j10;
                c1727k.f20498g = j11;
                c1727k.f20499h = C1727k.calculateNextSearchBytePosition(c1727k.f20493b, c1727k.f20495d, j10, c1727k.f20497f, j11, c1727k.f20494c);
            }
        }
    }

    public final boolean isSeeking() {
        return this.f20511c != null;
    }

    public final void markSeekOperationFinished(boolean z6, long j7) {
        this.f20511c = null;
        this.f20510b.onSeekFinished();
        onSeekOperationFinished(z6, j7);
    }

    public final int seekToPosition(D d7, long j7, c0 c0Var) {
        if (j7 == d7.getPosition()) {
            return 0;
        }
        c0Var.f20439a = j7;
        return 1;
    }

    public final void setSeekTargetUs(long j7) {
        C1727k c1727k = this.f20511c;
        if (c1727k == null || c1727k.f20492a != j7) {
            this.f20511c = createSeekParamsForTargetTimeUs(j7);
        }
    }

    public final boolean skipInputUntilPosition(D d7, long j7) throws IOException {
        long position = j7 - d7.getPosition();
        if (position < 0 || position > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        d7.skipFully((int) position);
        return true;
    }

    public void onSeekOperationFinished(boolean z6, long j7) {
    }
}
