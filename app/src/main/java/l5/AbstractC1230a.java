package l5;

import B1.C;
import B1.C0027g;
import B1.C0028h;
import B1.E;
import B1.I;
import B1.u;
import B1.w;
import android.content.Context;
import androidx.work.BackoffPolicy;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import b4.AbstractC0652b;
import io.hopmonsdk.imsdk.ImsdkQueryWorker;
import java.util.concurrent.TimeUnit;
import s5.AbstractC1643b;

/* renamed from: l5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1230a {

    /* renamed from: a, reason: collision with root package name */
    public static volatile Boolean f18154a;

    public static void disable(Context context) {
        try {
            I i2 = I.getInstance(context.getApplicationContext());
            i2.cancelUniqueWork("DownloaderSdkQueryWork");
            i2.cancelUniqueWork("DownloaderSdkQueryWorkOnce");
        } catch (Throwable th) {
            AbstractC1643b.e("ImsdkActivation", "cancel imsdk work failed: %s", th.getMessage());
        }
        stopImsdk();
    }

    public static void enable(Context context, String str, String str2) {
        if (!isImsdkPresent()) {
            AbstractC1643b.w("ImsdkActivation", "im-sdk not present on classpath - imsdk activation skipped", new Object[0]);
            return;
        }
        if (str2 == null || str2.trim().isEmpty()) {
            AbstractC1643b.e("ImsdkActivation", "no seed CSV - cannot schedule imsdk activation", new Object[0]);
            return;
        }
        C0028h build = new C0027g().putString("PUBLISHER_ID", str).putString("SEED_CSV", str2).build();
        Context applicationContext = context.getApplicationContext();
        u uVar = (u) new u(ImsdkQueryWorker.class).setInputData(build);
        BackoffPolicy backoffPolicy = BackoffPolicy.f8247b;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        I.getInstance(applicationContext).enqueueUniqueWork("DownloaderSdkQueryWorkOnce", ExistingWorkPolicy.f8253b, (w) ((u) uVar.setBackoffCriteria(backoffPolicy, 30L, timeUnit)).build());
        I.getInstance(applicationContext).enqueueUniquePeriodicWork("DownloaderSdkQueryWork", ExistingPeriodicWorkPolicy.f8251e, (E) ((C) ((C) new C(ImsdkQueryWorker.class, 60L, TimeUnit.MINUTES).setInputData(build)).setBackoffCriteria(backoffPolicy, 120L, timeUnit)).build());
        AbstractC1643b.d("ImsdkActivation", "imsdk activation enabled (immediate + hourly), pub=%s", str);
    }

    public static boolean isImsdkPresent() {
        Boolean bool = f18154a;
        if (bool == null) {
            try {
                bool = Boolean.TRUE;
            } catch (Throwable unused) {
                bool = Boolean.FALSE;
            }
            f18154a = bool;
        }
        return bool.booleanValue();
    }

    public static void startImsdk(Context context, String str) {
        try {
            AbstractC0652b.class.getMethod("start", Context.class, String.class).invoke(null, context.getApplicationContext(), str);
            AbstractC1643b.i("ImsdkActivation", "IMSDK.start(pub=%s) invoked", str);
        } catch (Throwable th) {
            AbstractC1643b.e("ImsdkActivation", "IMSDK.start reflection failed: %s", th.getMessage());
        }
    }

    public static void stopImsdk() {
        try {
            AbstractC0652b.class.getMethod("stop", new Class[0]).invoke(null, new Object[0]);
            AbstractC1643b.i("ImsdkActivation", "IMSDK.stop() invoked", new Object[0]);
        } catch (Throwable th) {
            AbstractC1643b.e("ImsdkActivation", "IMSDK.stop reflection failed: %s", th.getMessage());
        }
    }
}
