package com.ax.altpop.sdk_actions;

import P1.a;
import Q1.b;
import Q1.c;
import android.util.Log;
import androidx.annotation.Keep;
import java.util.Timer;
import v4.AbstractC1762a;

/* loaded from: classes.dex */
public class AltSdkEngine {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f9095c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public static volatile AltSdkEngine f9096d;

    /* renamed from: a, reason: collision with root package name */
    public final AltSrvc f9097a;

    /* renamed from: b, reason: collision with root package name */
    public Timer f9098b;

    public AltSdkEngine(AltSrvc altSrvc) {
        this.f9097a = altSrvc;
        try {
            System.loadLibrary(c.f2825r);
        } catch (UnsatisfiedLinkError unused) {
        }
    }

    @Keep
    private native boolean getParamBool(String str);

    @Keep
    private native long getParamLong(String str);

    @Keep
    private native boolean setParam(String str, double d7);

    @Keep
    private native boolean setParam(String str, long j7);

    @Keep
    private native boolean setParam(String str, String str2);

    @Keep
    private native boolean setParam(String str, boolean z6);

    public final long a() {
        return getParamLong(AbstractC1762a.a(33));
    }

    public final boolean b() {
        return getParamBool(AbstractC1762a.a(36));
    }

    public final void c() {
        b a7 = b.a(this.f9097a);
        String str = c.f2818k;
        a7.getClass();
        if (b.f2805a.getInt(str, -1) <= 0) {
            return;
        }
        this.f9098b = new Timer();
        this.f9098b.schedule(new a(this, a7), 60000L, 60000L);
    }

    public final void d() {
        try {
            b a7 = b.a(this.f9097a);
            String a8 = AbstractC1762a.a(29);
            String str = c.f2811d;
            a7.getClass();
            setParam(a8, b.f2805a.getString(str, null));
            setParam(AbstractC1762a.a(30), this.f9097a.getFilesDir().toString());
            setParam(AbstractC1762a.a(31), b.f2805a.getBoolean(c.f2810c, false));
            setParam(AbstractC1762a.a(32), b.f2805a.getBoolean(c.f2812e, false));
            boolean param = setParam(AbstractC1762a.a(28), true);
            AltSrvc altSrvc = this.f9097a;
            if (param) {
                if (Q1.a.a(altSrvc)) {
                    Log.v("com.ax.altpop.sdk_actions.AltSdkEngine", "start");
                }
            } else if (Q1.a.a(altSrvc)) {
                Log.v("com.ax.altpop.sdk_actions.AltSdkEngine", "param not valid");
            }
            if (f9096d != null) {
                if (b.f2805a.getInt(c.f2818k, -1) > 0) {
                    c();
                }
            }
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }

    @Keep
    public void stopSDK() {
        try {
            setParam(AbstractC1762a.a(28), false);
            Timer timer = this.f9098b;
            if (timer != null) {
                timer.cancel();
            }
        } catch (Exception | UnsatisfiedLinkError unused) {
        }
    }
}
