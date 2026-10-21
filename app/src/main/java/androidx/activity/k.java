package androidx.activity;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class k implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity f4876b;

    public k(ComponentActivity componentActivity) {
        this.f4876b = componentActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            super/*android.app.Activity*/.onBackPressed();
        } catch (IllegalStateException e3) {
            if (!TextUtils.equals(e3.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e3;
            }
        } catch (NullPointerException e7) {
            if (!TextUtils.equals(e7.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                throw e7;
            }
        }
    }
}
