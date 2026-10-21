package com.ax.altpop.sdk_actions;

import A.i;
import P1.b;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import b.c;
import com.ax.altpop.fg.a;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class AltSrvc extends Service {

    /* renamed from: f, reason: collision with root package name */
    public static volatile boolean f9099f = false;

    /* renamed from: b, reason: collision with root package name */
    public final b f9100b = new b();

    /* renamed from: e, reason: collision with root package name */
    public AltSdkEngine f9101e;

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0062, code lost:
    
        if (r1.length() <= 100) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0073, code lost:
    
        if (r1.getString("android.title") == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0128, code lost:
    
        if (checkSelfPermission("android.permission.FOREGROUND_SERVICE_DATA_SYNC") == 0) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ax.altpop.sdk_actions.AltSrvc.a():void");
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f9100b;
    }

    @Override // android.app.Service
    public final void onCreate() {
        if (AltSdkEngine.f9096d == null) {
            synchronized (AltSdkEngine.f9095c) {
                try {
                    if (AltSdkEngine.f9096d == null) {
                        AltSdkEngine.f9096d = new AltSdkEngine(this);
                    }
                } finally {
                }
            }
        }
        this.f9101e = AltSdkEngine.f9096d;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        try {
            this.f9101e.stopSDK();
        } catch (Exception e3) {
            c.t(e3, new StringBuilder("err: "), "com.ax.altpop.sdk_actions.AltSrvc");
        }
        f9099f = false;
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i7) {
        super.onStartCommand(intent, i2, i7);
        if (intent != null && !TextUtils.isEmpty(intent.getAction())) {
            String action = intent.getAction();
            String str = Q1.c.f2822o;
            if (action.equals(str) || action.equals(Q1.c.f2823p)) {
                String action2 = intent.getAction();
                try {
                    if (str.equals(action2)) {
                        if (f9099f) {
                            Log.e("com.ax.altpop.sdk_actions.AltSrvc", "Already running!");
                            return 3;
                        }
                        a();
                        this.f9101e.d();
                        f9099f = this.f9101e.b();
                        return 3;
                    }
                    if (Q1.c.f2823p.equals(action2)) {
                        if (Build.VERSION.SDK_INT >= 24) {
                            stopForeground(1);
                        } else {
                            stopForeground(true);
                        }
                        stopSelf();
                        return 3;
                    }
                } catch (Exception e3) {
                    if (e3.getClass().getSimpleName().equals(Q1.c.f2829v)) {
                        a.b(this, intent);
                    } else {
                        Log.e("com.ax.altpop.sdk_actions.AltSrvc", c.m("action ", action2, " failed! Error = ", e3.getMessage(), StringUtils.SPACE));
                    }
                }
            }
        }
        return 3;
    }

    public final void onTimeout(int i2, int i7) {
        String e3 = i.e(i2, i7, "onTimeout: startId:", " , fgsType:");
        if (Q1.a.a(this)) {
            Log.v("com.ax.altpop.sdk_actions.AltSrvc", e3);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            stopForeground(1);
        } else {
            stopForeground(true);
        }
        stopSelf();
        super.onTimeout(i2, i7);
    }
}
