package p2;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: e, reason: collision with root package name */
    public static final int f19463e;

    /* renamed from: a, reason: collision with root package name */
    public final Context f19464a;

    /* renamed from: b, reason: collision with root package name */
    public final ActivityManager f19465b;

    /* renamed from: c, reason: collision with root package name */
    public final o f19466c;

    /* renamed from: d, reason: collision with root package name */
    public final float f19467d;

    static {
        f19463e = Build.VERSION.SDK_INT < 26 ? 4 : 1;
    }

    public n(Context context) {
        this.f19467d = f19463e;
        this.f19464a = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f19465b = activityManager;
        this.f19466c = new o(context.getResources().getDisplayMetrics());
        if (Build.VERSION.SDK_INT < 26 || !activityManager.isLowRamDevice()) {
            return;
        }
        this.f19467d = 0.0f;
    }

    public q build() {
        return new q(this);
    }
}
