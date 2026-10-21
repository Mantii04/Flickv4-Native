package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import z.AbstractC1958d;

/* loaded from: classes.dex */
public abstract class P extends L {

    /* renamed from: b, reason: collision with root package name */
    public final H f6149b;

    /* renamed from: e, reason: collision with root package name */
    public final Context f6150e;

    /* renamed from: f, reason: collision with root package name */
    public final Handler f6151f;

    /* renamed from: j, reason: collision with root package name */
    public final C0469j0 f6152j;

    public P(H h7) {
        Handler handler = new Handler();
        this.f6152j = new C0469j0();
        this.f6149b = h7;
        this.f6150e = (Context) L.h.checkNotNull(h7, "context == null");
        this.f6151f = (Handler) L.h.checkNotNull(handler, "handler == null");
    }

    public Handler getHandler() {
        return this.f6151f;
    }

    public abstract void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract Object onGetHost();

    public abstract LayoutInflater onGetLayoutInflater();

    public void onStartActivityFromFragment(C c7, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (i2 != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        A.h.startActivity(this.f6150e, intent, bundle);
    }

    @Deprecated
    public void onStartIntentSenderFromFragment(C c7, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i7, int i8, int i9, Bundle bundle) throws IntentSender.SendIntentException {
        if (i2 != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        AbstractC1958d.startIntentSenderForResult(this.f6149b, intentSender, i2, intent, i7, i8, i9, bundle);
    }

    public abstract void onSupportInvalidateOptionsMenu();
}
