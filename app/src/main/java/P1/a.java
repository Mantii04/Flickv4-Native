package P1;

import Q1.c;
import com.ax.altpop.sdk_actions.AltSdkEngine;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public final class a extends TimerTask {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AltSdkEngine f2679b;

    public a(AltSdkEngine altSdkEngine, Q1.b bVar) {
        this.f2679b = altSdkEngine;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        long j7 = Q1.b.a(this.f2679b.f9097a) != null ? Q1.b.f2805a.getLong(c.f2819l, -1L) : 0L;
        long a7 = this.f2679b.a();
        int i2 = Q1.b.f2805a.getInt(c.f2818k, -1);
        String str = c.f2819l;
        Q1.b.a(str, j7 + a7);
        if (i2 > 0) {
            if ((Q1.b.a(this.f2679b.f9097a) != null ? Q1.b.f2805a.getLong(str, -1L) : 0L) > i2 * 1000) {
                this.f2679b.stopSDK();
                Q1.b.a(c.f2820m, System.currentTimeMillis());
                Timer timer = this.f2679b.f9098b;
                if (timer != null) {
                    timer.cancel();
                }
            }
        }
    }
}
