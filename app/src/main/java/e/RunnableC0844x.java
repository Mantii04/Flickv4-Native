package e;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.profileinstaller.ProfileInstallerInitializer;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import l1.AbstractC1211g;
import l1.AbstractC1214j;

/* renamed from: e.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0844x implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13878b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f13879e;

    public /* synthetic */ RunnableC0844x(Context context, int i2) {
        this.f13878b = i2;
        this.f13879e = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13878b) {
            case 0:
                if (Build.VERSION.SDK_INT >= 33) {
                    Context context = this.f13879e;
                    ComponentName componentName = new ComponentName(context, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (AbstractC0813A.getApplicationLocales().isEmpty()) {
                            String e3 = V3.r.e(context);
                            Object systemService = context.getSystemService("locale");
                            if (systemService != null) {
                                AbstractC0846z.b(systemService, AbstractC0845y.a(e3));
                            }
                        }
                        context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                    }
                }
                AbstractC0813A.f13641n = true;
                break;
            case 1:
                (Build.VERSION.SDK_INT >= 28 ? AbstractC1214j.createAsync(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new RunnableC0844x(this.f13879e, 2), new Random().nextInt(Math.max(1000, 1)) + 5000);
                break;
            case 2:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new RunnableC0844x(this.f13879e, 3));
                break;
            default:
                AbstractC1211g.writeProfile(this.f13879e);
                break;
        }
    }

    public /* synthetic */ RunnableC0844x(ProfileInstallerInitializer profileInstallerInitializer, Context context) {
        this.f13878b = 1;
        this.f13879e = context;
    }
}
