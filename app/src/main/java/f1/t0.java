package f1;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class t0 extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f14310a;

    public t0(p0 p0Var) {
        this.f14310a = new WeakReference(p0Var);
    }

    public void dispose() {
        this.f14310a.clear();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.os.Handler
    public void handleMessage(Message message) {
        p0 p0Var = (p0) this.f14310a.get();
        if (p0Var != null) {
            int i2 = message.what;
            int i7 = message.arg1;
            int i8 = message.arg2;
            Object obj = message.obj;
            Bundle peekData = message.peekData();
            boolean z6 = true;
            switch (i2) {
                case 0:
                    p0Var.onGenericFailure(i7);
                    break;
                case 1:
                    break;
                case 2:
                    if (obj == null || (obj instanceof Bundle)) {
                        z6 = p0Var.onRegistered(i7, i8, (Bundle) obj);
                        break;
                    }
                    z6 = false;
                    break;
                case 3:
                    if (obj == null || (obj instanceof Bundle)) {
                        z6 = p0Var.onControlRequestSucceeded(i7, (Bundle) obj);
                        break;
                    }
                    z6 = false;
                    break;
                case 4:
                    if (obj == null || (obj instanceof Bundle)) {
                        z6 = p0Var.onControlRequestFailed(i7, peekData == null ? null : peekData.getString("error"), (Bundle) obj);
                        break;
                    }
                    z6 = false;
                    break;
                case 5:
                    if (obj == null || (obj instanceof Bundle)) {
                        z6 = p0Var.onDescriptorChanged((Bundle) obj);
                        break;
                    }
                    z6 = false;
                    break;
                case 6:
                    if (obj instanceof Bundle) {
                        p0Var.onDynamicGroupRouteControllerCreated(i7, (Bundle) obj);
                    } else {
                        Log.w("MediaRouteProviderProxy", "No further information on the dynamic group controller");
                    }
                    z6 = false;
                    break;
                case 7:
                    if (obj == null || (obj instanceof Bundle)) {
                        z6 = p0Var.onDynamicRouteDescriptorsChanged(i8, (Bundle) obj);
                        break;
                    }
                    z6 = false;
                    break;
                case 8:
                    p0Var.onControllerReleasedByProvider(i8);
                    z6 = false;
                    break;
                default:
                    z6 = false;
                    break;
            }
            if (z6) {
                return;
            }
            int i9 = x0.f14336q;
        }
    }
}
