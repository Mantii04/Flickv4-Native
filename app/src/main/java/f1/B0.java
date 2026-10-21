package f1;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class B0 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f14109a;

    /* renamed from: b, reason: collision with root package name */
    public final C0903k f14110b;

    /* renamed from: d, reason: collision with root package name */
    public final PackageManager f14112d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14114f;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f14113e = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final y0 f14115g = new y0(this);

    /* renamed from: h, reason: collision with root package name */
    public final z0 f14116h = new z0(this);

    /* renamed from: c, reason: collision with root package name */
    public final Handler f14111c = new Handler();

    public B0(Context context, C0903k c0903k) {
        this.f14109a = context;
        this.f14110b = c0903k;
        this.f14112d = context.getPackageManager();
    }

    public final void a() {
        ArrayList arrayList;
        C0903k c0903k;
        int i2;
        if (this.f14114f) {
            ArrayList<ServiceInfo> arrayList2 = new ArrayList();
            int i7 = Build.VERSION.SDK_INT;
            PackageManager packageManager = this.f14112d;
            if (i7 >= 30) {
                Intent intent = new Intent("android.media.MediaRoute2ProviderService");
                ArrayList arrayList3 = new ArrayList();
                Iterator<ResolveInfo> it = packageManager.queryIntentServices(intent, 0).iterator();
                while (it.hasNext()) {
                    arrayList3.add(it.next().serviceInfo);
                }
                arrayList2 = arrayList3;
            }
            Iterator<ResolveInfo> it2 = packageManager.queryIntentServices(new Intent("android.media.MediaRouteProviderService"), 0).iterator();
            int i8 = 0;
            while (true) {
                boolean hasNext = it2.hasNext();
                arrayList = this.f14113e;
                c0903k = this.f14110b;
                if (!hasNext) {
                    break;
                }
                ServiceInfo serviceInfo = it2.next().serviceInfo;
                if (serviceInfo != null) {
                    if (X.isMediaTransferEnabled() && !arrayList2.isEmpty()) {
                        for (ServiceInfo serviceInfo2 : arrayList2) {
                            if (!serviceInfo.packageName.equals(serviceInfo2.packageName) || !serviceInfo.name.equals(serviceInfo2.name)) {
                            }
                        }
                    }
                    String str = serviceInfo.packageName;
                    String str2 = serviceInfo.name;
                    int size = arrayList.size();
                    int i9 = 0;
                    while (true) {
                        if (i9 >= size) {
                            i9 = -1;
                            break;
                        } else if (((x0) arrayList.get(i9)).hasComponentName(str, str2)) {
                            break;
                        } else {
                            i9++;
                        }
                    }
                    if (i9 < 0) {
                        x0 x0Var = new x0(this.f14109a, new ComponentName(serviceInfo.packageName, serviceInfo.name));
                        x0Var.setControllerCallback(new X4.a(27, this, x0Var));
                        x0Var.start();
                        i2 = i8 + 1;
                        arrayList.add(i8, x0Var);
                        c0903k.addProvider(x0Var);
                    } else if (i9 >= i8) {
                        x0 x0Var2 = (x0) arrayList.get(i9);
                        x0Var2.start();
                        x0Var2.rebindIfDisconnected();
                        i2 = i8 + 1;
                        Collections.swap(arrayList, i9, i8);
                    }
                    i8 = i2;
                }
            }
            if (i8 < arrayList.size()) {
                for (int size2 = arrayList.size() - 1; size2 >= i8; size2--) {
                    x0 x0Var3 = (x0) arrayList.get(size2);
                    c0903k.removeProvider(x0Var3);
                    arrayList.remove(x0Var3);
                    x0Var3.setControllerCallback(null);
                    x0Var3.stop();
                }
            }
        }
    }

    public void rescan() {
        this.f14111c.post(this.f14116h);
    }

    public void start() {
        if (this.f14114f) {
            return;
        }
        this.f14114f = true;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_RESTARTED");
        intentFilter.addDataScheme("package");
        int i2 = Build.VERSION.SDK_INT;
        Handler handler = this.f14111c;
        y0 y0Var = this.f14115g;
        Context context = this.f14109a;
        if (i2 < 33) {
            context.registerReceiver(y0Var, intentFilter, null, handler);
        } else {
            A0.a(context, y0Var, intentFilter, handler, 4);
        }
        handler.post(this.f14116h);
    }
}
