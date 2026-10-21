package b;

import A.i;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import com.ax.altpop.sdk_actions.AltSrvc;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8331a;

    /* renamed from: b, reason: collision with root package name */
    public final Q1.b f8332b;

    /* renamed from: c, reason: collision with root package name */
    public ScheduledFuture f8333c;

    public d(Context context) {
        this.f8331a = context;
        try {
            this.f8332b = Q1.b.a(context);
        } catch (Throwable unused) {
        }
    }

    public final void a() {
        String str = Q1.c.f2822o;
        Intent intent = new Intent();
        Context context = this.f8331a;
        intent.setClass(context, AltSrvc.class);
        intent.setAction(str);
        try {
            context.startForegroundService(intent);
        } catch (Exception e3) {
            if (e3.getClass().getSimpleName().equals(Q1.c.f2829v)) {
                Log.d("a.b", "Not in focus waiting");
                com.ax.altpop.fg.a.b(context, intent);
            } else {
                Log.d("a.b", "error " + e3.getMessage());
            }
        }
    }

    public final void b() {
        if (AltSrvc.f9099f) {
            return;
        }
        try {
            d();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final Boolean c() {
        if (AltSrvc.f9099f) {
            return Boolean.TRUE;
        }
        long currentTimeMillis = System.currentTimeMillis();
        Q1.b bVar = this.f8332b;
        String str = Q1.c.f2820m;
        bVar.getClass();
        long j7 = Q1.b.f2805a.getLong(str, -1L);
        Q1.b bVar2 = this.f8332b;
        String str2 = Q1.c.f2821n;
        bVar2.getClass();
        long j8 = Q1.b.f2805a.getInt(str2, -1);
        TimeUnit timeUnit = TimeUnit.MINUTES;
        long millis = timeUnit.toMillis(j8) - (currentTimeMillis - j7);
        if (millis > 0) {
            Context context = this.f8331a;
            String i2 = i.i("Bandwidth limit was exceeded. Please wait for ", millis);
            if (Q1.a.a(context)) {
                Log.i("a.b", i2);
            }
            return Boolean.FALSE;
        }
        this.f8332b.getClass();
        Q1.b.f2805a.edit().putLong(str, 0L).apply();
        Q1.b bVar3 = this.f8332b;
        String str3 = Q1.c.f2819l;
        bVar3.getClass();
        Q1.b.f2805a.edit().putLong(str3, 0L).apply();
        Q1.b bVar4 = this.f8332b;
        String str4 = Q1.c.f2817j;
        bVar4.getClass();
        int i7 = Q1.b.f2805a.getInt(str4, -1);
        if (i7 > 0) {
            Log.i("a.b", "Delay = " + i7);
            this.f8333c = Executors.newScheduledThreadPool(1).schedule(new CallableC0623b(this), (long) i7, timeUnit);
        } else {
            b();
        }
        return Boolean.TRUE;
    }

    public final void d() {
        Context context = this.f8331a;
        if (com.ax.altpop.fg.b.b(context)) {
            new Handler(context.getMainLooper()).post(new RunnableC0622a(this, 1));
            return;
        }
        try {
            String str = Q1.c.f2822o;
            Intent intent = new Intent();
            intent.setClass(context, AltSrvc.class);
            intent.setAction(str);
            com.ax.altpop.fg.a.b(context, intent);
            Intent intent2 = new Intent();
            intent2.setClass(context, AltSrvc.class);
            intent2.setAction(str);
            context.startService(intent2);
        } catch (Exception e3) {
            c.t(e3, new StringBuilder("err"), "a.b");
        }
    }
}
