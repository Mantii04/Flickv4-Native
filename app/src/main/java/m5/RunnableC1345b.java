package m5;

import A.i;
import android.content.Context;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import androidx.media3.exoplayer.ExoPlayer;
import io.hopmonsdk.Hopmn;
import io.hopmonsdk.HopmnSrv;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import q5.C1527a;
import r5.AsyncTaskC1601a;
import s5.AbstractC1643b;

/* renamed from: m5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1345b implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final Context f18730b;

    /* renamed from: e, reason: collision with root package name */
    public final C1527a f18731e;

    /* renamed from: f, reason: collision with root package name */
    public AsyncTaskC1601a f18732f;

    /* renamed from: m, reason: collision with root package name */
    public final PowerManager.WakeLock f18734m;

    /* renamed from: p, reason: collision with root package name */
    public String f18736p;

    /* renamed from: q, reason: collision with root package name */
    public String f18737q;

    /* renamed from: j, reason: collision with root package name */
    public final Handler f18733j = new Handler();

    /* renamed from: n, reason: collision with root package name */
    public int f18735n = 0;

    /* renamed from: r, reason: collision with root package name */
    public boolean f18738r = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f18739s = false;

    public RunnableC1345b(Context context, PowerManager.WakeLock wakeLock) {
        try {
            Hopmn hopmn = Hopmn.getInstance(context);
            this.f18730b = context;
            this.f18734m = wakeLock;
            this.f18731e = hopmn.getConfigManager();
            hopmn.getHttpManager();
            new ArrayList(10);
        } catch (Exception e3) {
            AbstractC1643b.e("ConfigSyncJob", "create ConfigSyncJob failed! Error = %s ", e3.getMessage());
        }
    }

    public static void a(RunnableC1345b runnableC1345b, String str) {
        runnableC1345b.f18735n++;
        Handler handler = runnableC1345b.f18733j;
        handler.removeCallbacks(runnableC1345b);
        int i2 = runnableC1345b.f18735n;
        if (i2 >= 10) {
            AbstractC1643b.w("ConfigSyncJob", "Retry limit reached after %s. Waiting 5 minutes.", str);
            runnableC1345b.f18735n = 0;
            handler.postDelayed(runnableC1345b, 300000L);
        } else {
            long j7 = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
            if (i2 > 1) {
                j7 = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS * i2;
            }
            AbstractC1643b.w("ConfigSyncJob", "Scheduling retry in %d ms due to %s", Long.valueOf(j7), str);
            handler.postDelayed(runnableC1345b, j7);
        }
    }

    public final void b(Hopmn hopmn) {
        String publisher = hopmn.getPublisher() == null ? "syncjobnullpub" : hopmn.getPublisher();
        String str = this.f18736p;
        if (str == null) {
            str = "syncjobnulluid";
        }
        String valueOf = String.valueOf(hopmn.isForegroundRunning());
        String str2 = this.f18737q;
        String str3 = (str2 == null || str2.isEmpty()) ? "CC" : this.f18737q;
        StringBuilder u6 = i.u("/?domain=", hopmn.getDomain(), "&uid=", str, "&pub=");
        u6.append(publisher);
        u6.append("&foreground=");
        u6.append(valueOf);
        u6.append("&ver=15.0.17&get=1&cc=");
        u6.append(str3);
        String sb = u6.toString();
        AbstractC1643b.d("ConfigSyncJob", "Seed-mode config sync, path: %s", sb);
        hopmn.getSeedDiscovery().executeGet(sb, new C1344a(this));
    }

    public long getUpTime(TimeUnit timeUnit) {
        AsyncTaskC1601a asyncTaskC1601a = this.f18732f;
        if (asyncTaskC1601a != null) {
            return asyncTaskC1601a.getUpTime(timeUnit);
        }
        return 0L;
    }

    public boolean isRunning() {
        AsyncTaskC1601a asyncTaskC1601a = this.f18732f;
        return asyncTaskC1601a != null && asyncTaskC1601a.isRunning();
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z6 = this.f18739s;
        if (z6 || !this.f18738r) {
            AbstractC1643b.d("ConfigSyncJob", "ConfigSyncJob run ignored. shutdown=%s scheduled=%s", String.valueOf(z6), String.valueOf(this.f18738r));
            return;
        }
        try {
            Hopmn hopmn = Hopmn.getInstance(this.f18730b);
            long delayMillis = hopmn.getDelayMillis() - (SystemClock.elapsedRealtime() % 1000);
            this.f18733j.postDelayed(this, delayMillis);
            this.f18734m.acquire(delayMillis);
            b(hopmn);
        } catch (Exception e3) {
            AbstractC1643b.e("ConfigSyncJob", "run ConfigSyncJob failed! Error = %s ", e3.getMessage());
        }
    }

    public void schedule(String str, String str2) {
        this.f18736p = str;
        this.f18737q = str2;
        if (this.f18739s) {
            AbstractC1643b.w("ConfigSyncJob", "ConfigSyncJob is shutdown - ignoring schedule", new Object[0]);
            return;
        }
        if (this.f18738r) {
            AbstractC1643b.d("ConfigSyncJob", "ConfigSyncJob already scheduled - skipping duplicate schedule", new Object[0]);
            return;
        }
        this.f18738r = true;
        Handler handler = this.f18733j;
        handler.removeCallbacks(this);
        handler.post(this);
        AbstractC1643b.d("ConfigSyncJob", "Scheduled configuration synchronization job", new Object[0]);
    }

    public void shutdown() {
        AbstractC1643b.d("ConfigSyncJob", "Shutdown configuration synchronization job", new Object[0]);
        this.f18739s = true;
        this.f18738r = false;
        this.f18733j.removeCallbacks(this);
        PowerManager.WakeLock wakeLock = this.f18734m;
        if (wakeLock != null && wakeLock.isHeld()) {
            wakeLock.release();
        }
        if (this.f18732f != null) {
            HopmnSrv.stop();
            this.f18732f.cancel(true);
            this.f18732f = null;
        }
    }
}
