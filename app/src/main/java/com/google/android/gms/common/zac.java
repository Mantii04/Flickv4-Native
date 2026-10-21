package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zaq;

@SuppressLint({"HandlerLeak"})
/* loaded from: classes.dex */
final class zac extends zaq {

    /* renamed from: a, reason: collision with root package name */
    public final Context f11059a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ GoogleApiAvailability f11060b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zac(GoogleApiAvailability googleApiAvailability, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f11060b = googleApiAvailability;
        this.f11059a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 != 1) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Don't know how to handle this message: ");
            sb.append(i2);
            Log.w("GoogleApiAvailability", sb.toString());
            return;
        }
        GoogleApiAvailability googleApiAvailability = this.f11060b;
        Context context = this.f11059a;
        int isGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(context);
        if (googleApiAvailability.isUserResolvableError(isGooglePlayServicesAvailable)) {
            googleApiAvailability.showErrorNotification(context, isGooglePlayServicesAvailable);
        }
    }
}
