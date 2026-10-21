package com.ax.altpop;

import A4.n;
import Q1.a;
import Q1.b;
import Q1.c;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.InterfaceC0548f;
import b.d;
import com.ax.altpop.sdk_actions.AltSrvc;

/* loaded from: classes.dex */
public class AltPop {

    /* renamed from: a, reason: collision with root package name */
    public final d f9087a;

    public AltPop(Context context) {
        this.f9087a = new d(context);
    }

    @Keep
    public static AltPop initialize(Context context, AltConfig altConfig) {
        if (context == null || altConfig == null) {
            throw new IllegalArgumentException("Context and config cannot have null values");
        }
        AltPop altPop = new AltPop(context);
        b a7 = b.a(context);
        if (altConfig.getPublisher() == null || altConfig.getPublisher().equalsIgnoreCase("")) {
            throw new IllegalArgumentException("The publisher cannot be null or empty");
        }
        if (altConfig.getDelay() < 0) {
            throw new IllegalArgumentException("The delay cannot have a negative value");
        }
        if (altConfig.getBWLimit() < 0) {
            throw new IllegalArgumentException("The bandwidth cannot have a negative value");
        }
        if (altConfig.getBWLimit() > 0 && altConfig.getTimeOut() <= 0) {
            throw new IllegalArgumentException("Timeout has to have positive value");
        }
        String str = c.f2811d;
        String publisher = altConfig.getPublisher();
        a7.getClass();
        b.a(str, publisher);
        b.a(c.f2810c, altConfig.getLoggable());
        if (altConfig.getFg() && Build.VERSION.SDK_INT >= 26) {
            try {
                String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
                if (strArr != null) {
                    for (String str2 : strArr) {
                        if (!"android.permission.FOREGROUND_SERVICE".equals(str2)) {
                        }
                    }
                }
            } catch (Exception unused) {
            }
            Log.e("com.ax.altpop.AltPop", "FG Permission Not Found");
            b.a(c.f2812e, false);
            b.a(c.f2828u, false);
            b.a(c.f2817j, altConfig.getDelay());
            String str3 = c.f2818k;
            b.a(str3, altConfig.getBWLimit());
            String str4 = c.f2821n;
            b.a(str4, altConfig.getTimeOut());
            b.a(str3, altConfig.getBWLimit());
            b.a(str4, altConfig.getTimeOut());
            b.a(altConfig.getNotification());
            b.a(c.f2814g, altConfig.getIcon());
            b.a(c.f2813f, altConfig.getAppName());
            b.a(c.f2815h, altConfig.getNotificationMessage());
            b.a(c.f2816i, altConfig.getActivityClass());
            return altPop;
        }
        b.a(c.f2812e, altConfig.getFg());
        b.a(c.f2828u, altConfig.getOnBoot());
        b.a(c.f2817j, altConfig.getDelay());
        String str32 = c.f2818k;
        b.a(str32, altConfig.getBWLimit());
        String str42 = c.f2821n;
        b.a(str42, altConfig.getTimeOut());
        b.a(str32, altConfig.getBWLimit());
        b.a(str42, altConfig.getTimeOut());
        b.a(altConfig.getNotification());
        b.a(c.f2814g, altConfig.getIcon());
        b.a(c.f2813f, altConfig.getAppName());
        b.a(c.f2815h, altConfig.getNotificationMessage());
        b.a(c.f2816i, altConfig.getActivityClass());
        return altPop;
    }

    @Keep
    public Boolean start() {
        return this.f9087a.c();
    }

    @Keep
    public void stop() {
        InterfaceC0548f interfaceC0548f;
        n nVar;
        d dVar = this.f9087a;
        if (a.a(dVar.f8331a)) {
            Log.v("a.b", "stop");
        }
        try {
            if (dVar.f8333c != null) {
                if (a.a(dVar.f8331a)) {
                    Log.i("a.b", "cancelling delayed start");
                }
                dVar.f8333c.cancel(true);
            }
            if (AltSrvc.f9099f) {
                Context context = dVar.f8331a;
                String str = c.f2823p;
                Intent intent = new Intent();
                intent.setClass(dVar.f8331a, AltSrvc.class);
                intent.setAction(str);
                context.startService(intent);
            }
        } catch (Exception unused) {
        }
        synchronized (com.ax.altpop.fg.a.class) {
            try {
                Handler handler = com.ax.altpop.fg.a.f9093d;
                if (handler != null && (nVar = com.ax.altpop.fg.a.f9094e) != null) {
                    handler.removeCallbacks(nVar);
                }
                com.ax.altpop.fg.a.f9093d = null;
                com.ax.altpop.fg.a.f9094e = null;
                AbstractC0557o abstractC0557o = com.ax.altpop.fg.a.f9090a;
                if (abstractC0557o != null && (interfaceC0548f = com.ax.altpop.fg.a.f9091b) != null) {
                    abstractC0557o.removeObserver(interfaceC0548f);
                    com.ax.altpop.fg.a.f9091b = null;
                }
                com.ax.altpop.fg.a.f9092c = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
