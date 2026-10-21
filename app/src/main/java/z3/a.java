package z3;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import com.google.android.material.R;
import cz.msebera.android.httpclient.HttpStatus;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final TimeInterpolator f21416a;

    /* renamed from: b, reason: collision with root package name */
    public final View f21417b;

    /* renamed from: c, reason: collision with root package name */
    public final int f21418c;

    /* renamed from: d, reason: collision with root package name */
    public final int f21419d;

    /* renamed from: e, reason: collision with root package name */
    public final int f21420e;

    /* renamed from: f, reason: collision with root package name */
    public androidx.activity.c f21421f;

    public a(View view) {
        this.f21417b = view;
        Context context = view.getContext();
        this.f21416a = k.resolveThemeInterpolator(context, R.attr.motionEasingStandardDecelerateInterpolator, O.b.create(0.0f, 0.0f, 0.0f, 1.0f));
        this.f21418c = k.resolveThemeDuration(context, R.attr.motionDurationMedium2, HttpStatus.SC_MULTIPLE_CHOICES);
        this.f21419d = k.resolveThemeDuration(context, R.attr.motionDurationShort3, 150);
        this.f21420e = k.resolveThemeDuration(context, R.attr.motionDurationShort2, 100);
    }

    public float interpolateProgress(float f3) {
        return this.f21416a.getInterpolation(f3);
    }

    public androidx.activity.c onCancelBackProgress() {
        if (this.f21421f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        androidx.activity.c cVar = this.f21421f;
        this.f21421f = null;
        return cVar;
    }

    public androidx.activity.c onHandleBackInvoked() {
        androidx.activity.c cVar = this.f21421f;
        this.f21421f = null;
        return cVar;
    }

    public void onStartBackProgress(androidx.activity.c cVar) {
        this.f21421f = cVar;
    }

    public androidx.activity.c onUpdateBackProgress(androidx.activity.c cVar) {
        if (this.f21421f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
        }
        androidx.activity.c cVar2 = this.f21421f;
        this.f21421f = cVar;
        return cVar2;
    }
}
