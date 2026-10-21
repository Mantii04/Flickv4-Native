package com.ax.altpop.fg;

import A4.n;
import Q1.c;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.InterfaceC0548f;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.J;
import com.ax.altpop.sdk_actions.AltSrvc;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static AbstractC0557o f9090a = null;

    /* renamed from: b, reason: collision with root package name */
    public static InterfaceC0548f f9091b = null;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f9092c = false;

    /* renamed from: d, reason: collision with root package name */
    public static Handler f9093d;

    /* renamed from: e, reason: collision with root package name */
    public static n f9094e;

    public static /* synthetic */ void a(final Context context, final Intent intent) {
        AbstractC0557o lifecycle = J.get().getLifecycle();
        f9090a = lifecycle;
        InterfaceC0548f interfaceC0548f = new InterfaceC0548f() { // from class: com.ax.altpop.fg.AppForegroundObserver$1
            @Override // androidx.lifecycle.InterfaceC0548f
            public final void onCreate(InterfaceC0561t interfaceC0561t) {
            }

            @Override // androidx.lifecycle.InterfaceC0548f
            public final void onDestroy(InterfaceC0561t interfaceC0561t) {
            }

            @Override // androidx.lifecycle.InterfaceC0548f
            public final void onPause(InterfaceC0561t interfaceC0561t) {
            }

            @Override // androidx.lifecycle.InterfaceC0548f
            public final void onResume(InterfaceC0561t interfaceC0561t) {
                Context context2 = context;
                String str = "onResume " + b.a(context);
                if (Q1.a.a(context2)) {
                    Log.i("com.ax.altpop.fg.a", str);
                }
                try {
                    if ((c.f2822o.equals(intent.getAction()) && AltSrvc.f9099f) || context.getApplicationContext() == null) {
                        return;
                    }
                    context.startService(intent);
                } catch (Exception e3) {
                    Context context3 = context;
                    String str2 = "Failed to start because of " + e3.getClass() + ": " + e3.getMessage();
                    if (Q1.a.a(context3)) {
                        Log.v("com.ax.altpop.fg.a", str2);
                    }
                }
            }

            @Override // androidx.lifecycle.InterfaceC0548f
            public final void onStart(InterfaceC0561t interfaceC0561t) {
            }

            @Override // androidx.lifecycle.InterfaceC0548f
            public final void onStop(InterfaceC0561t interfaceC0561t) {
            }
        };
        f9091b = interfaceC0548f;
        lifecycle.addObserver(interfaceC0548f);
    }

    public static synchronized void b(Context context, Intent intent) {
        synchronized (a.class) {
            if (f9092c) {
                return;
            }
            f9092c = true;
            Context applicationContext = context.getApplicationContext();
            Handler handler = new Handler(applicationContext.getMainLooper());
            f9093d = handler;
            n nVar = new n(28, applicationContext, intent);
            f9094e = nVar;
            handler.post(nVar);
        }
    }
}
