package l1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;

/* renamed from: l1.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1218n {

    /* renamed from: a, reason: collision with root package name */
    public static final androidx.concurrent.futures.o f18101a = androidx.concurrent.futures.o.create();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f18102b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static J3.b f18103c = null;

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? AbstractC1216l.a(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static J3.b b() {
        J3.b bVar = new J3.b();
        f18103c = bVar;
        f18101a.set(bVar);
        return f18103c;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:14|(1:80)(1:18)|19|(1:79)(1:23)|24|25|26|(2:64|65)(1:28)|29|(9:36|(1:40)|(1:47)|48|(2:56|57)|52|53|54|55)|(1:63)|(1:40)|(3:42|45|47)|48|(1:50)|56|57|52|53|54|55) */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x009e, code lost:
    
        r4 = 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l1.AbstractC1218n.c(android.content.Context, boolean):void");
    }
}
