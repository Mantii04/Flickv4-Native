package e;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* renamed from: e.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0836o extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f13806a;

    public HandlerC0836o(DialogInterface dialogInterface) {
        this.f13806a = new WeakReference(dialogInterface);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == -3 || i2 == -2 || i2 == -1) {
            ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f13806a.get(), message.what);
        } else {
            if (i2 != 1) {
                return;
            }
            ((DialogInterface) message.obj).dismiss();
        }
    }
}
