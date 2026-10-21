package pl.droidsonroids.gif;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;
import n6.g;

/* loaded from: classes2.dex */
public final class f extends g {
    @Override // n6.g
    public void doWork() {
        c cVar = this.f19019b;
        long l7 = cVar.f19530p.l(cVar.f19529n);
        if (l7 >= 0) {
            this.f19019b.f19526f = SystemClock.uptimeMillis() + l7;
            if (this.f19019b.isVisible() && this.f19019b.f19525e) {
                c cVar2 = this.f19019b;
                if (!cVar2.f19535u) {
                    cVar2.f19524b.remove(this);
                    c cVar3 = this.f19019b;
                    cVar3.f19539y = cVar3.f19524b.schedule(this, l7, TimeUnit.MILLISECONDS);
                }
            }
            if (!this.f19019b.f19531q.isEmpty() && this.f19019b.getCurrentFrameIndex() == this.f19019b.f19530p.h() - 1) {
                c cVar4 = this.f19019b;
                cVar4.f19536v.sendEmptyMessageAtTime(cVar4.getCurrentLoop(), this.f19019b.f19526f);
            }
        } else {
            c cVar5 = this.f19019b;
            cVar5.f19526f = Long.MIN_VALUE;
            cVar5.f19525e = false;
        }
        if (!this.f19019b.isVisible() || this.f19019b.f19536v.hasMessages(-1)) {
            return;
        }
        this.f19019b.f19536v.sendEmptyMessageAtTime(-1, 0L);
    }
}
