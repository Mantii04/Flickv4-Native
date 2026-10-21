package E1;

import B1.t;
import C1.InterfaceC0067e;
import C1.r;
import C1.w;
import L1.G;
import L1.x;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class m implements InterfaceC0067e {

    /* renamed from: s, reason: collision with root package name */
    public static final String f959s = t.tagWithPrefix("SystemAlarmDispatcher");

    /* renamed from: b, reason: collision with root package name */
    public final Context f960b;

    /* renamed from: e, reason: collision with root package name */
    public final N1.c f961e;

    /* renamed from: f, reason: collision with root package name */
    public final G f962f;

    /* renamed from: j, reason: collision with root package name */
    public final r f963j;

    /* renamed from: m, reason: collision with root package name */
    public final C1.G f964m;

    /* renamed from: n, reason: collision with root package name */
    public final c f965n;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f966p;

    /* renamed from: q, reason: collision with root package name */
    public Intent f967q;

    /* renamed from: r, reason: collision with root package name */
    public SystemAlarmService f968r;

    public m(SystemAlarmService systemAlarmService) {
        Context applicationContext = systemAlarmService.getApplicationContext();
        this.f960b = applicationContext;
        this.f965n = new c(applicationContext, new w());
        C1.G g7 = C1.G.getInstance((Context) systemAlarmService);
        this.f964m = g7;
        this.f962f = new G(g7.getConfiguration().getRunnableScheduler());
        r processor = g7.getProcessor();
        this.f963j = processor;
        this.f961e = g7.getWorkTaskExecutor();
        processor.addExecutionListener(this);
        this.f966p = new ArrayList();
        this.f967q = null;
    }

    public static void a() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    public boolean add(Intent intent, int i2) {
        t tVar = t.get();
        String str = f959s;
        tVar.debug(str, "Adding command " + intent + " (" + i2 + ")");
        a();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            t.get().warning(str, "Unknown command. Ignoring");
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && b()) {
            return false;
        }
        intent.putExtra("KEY_START_ID", i2);
        synchronized (this.f966p) {
            try {
                boolean isEmpty = this.f966p.isEmpty();
                this.f966p.add(intent);
                if (isEmpty) {
                    c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    public final boolean b() {
        a();
        synchronized (this.f966p) {
            try {
                Iterator it = this.f966p.iterator();
                while (it.hasNext()) {
                    if ("ACTION_CONSTRAINTS_CHANGED".equals(((Intent) it.next()).getAction())) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        a();
        PowerManager.WakeLock newWakeLock = x.newWakeLock(this.f960b, "ProcessCommand");
        try {
            newWakeLock.acquire();
            N1.c workTaskExecutor = this.f964m.getWorkTaskExecutor();
            i iVar = new i(this);
            N1.e eVar = (N1.e) workTaskExecutor;
            eVar.getClass();
            N1.b.a(eVar, iVar);
        } finally {
            newWakeLock.release();
        }
    }

    @Override // C1.InterfaceC0067e
    public void onExecuted(K1.r rVar, boolean z6) {
        Executor mainThreadExecutor = ((N1.e) this.f961e).getMainThreadExecutor();
        String str = c.f926m;
        Intent intent = new Intent(this.f960b, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z6);
        c.d(intent, rVar);
        mainThreadExecutor.execute(new j(0, this, intent));
    }
}
