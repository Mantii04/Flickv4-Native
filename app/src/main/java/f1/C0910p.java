package f1;

import android.media.MediaRouter2;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

/* renamed from: f1.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0910p extends F {

    /* renamed from: a, reason: collision with root package name */
    public final String f14286a;

    /* renamed from: b, reason: collision with root package name */
    public final C0909o f14287b;

    public C0910p(String str, C0909o c0909o) {
        this.f14286a = str;
        this.f14287b = c0909o;
    }

    @Override // f1.F
    public void onSetVolume(int i2) {
        C0909o c0909o;
        MediaRouter2.RoutingController routingController;
        boolean isReleased;
        Messenger messenger;
        String str = this.f14286a;
        if (str == null || (c0909o = this.f14287b) == null || (routingController = c0909o.f14275g) == null) {
            return;
        }
        isReleased = routingController.isReleased();
        if (isReleased || (messenger = c0909o.f14276h) == null) {
            return;
        }
        int andIncrement = c0909o.f14280l.getAndIncrement();
        Message obtain = Message.obtain();
        obtain.what = 7;
        obtain.arg1 = andIncrement;
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i2);
        bundle.putString("routeId", str);
        obtain.setData(bundle);
        obtain.replyTo = c0909o.f14277i;
        try {
            messenger.send(obtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e3) {
            Log.e("MR2Provider", "Could not send control request to service.", e3);
        }
    }

    @Override // f1.F
    public void onUpdateVolume(int i2) {
        C0909o c0909o;
        MediaRouter2.RoutingController routingController;
        boolean isReleased;
        Messenger messenger;
        String str = this.f14286a;
        if (str == null || (c0909o = this.f14287b) == null || (routingController = c0909o.f14275g) == null) {
            return;
        }
        isReleased = routingController.isReleased();
        if (isReleased || (messenger = c0909o.f14276h) == null) {
            return;
        }
        int andIncrement = c0909o.f14280l.getAndIncrement();
        Message obtain = Message.obtain();
        obtain.what = 8;
        obtain.arg1 = andIncrement;
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i2);
        bundle.putString("routeId", str);
        obtain.setData(bundle);
        obtain.replyTo = c0909o.f14277i;
        try {
            messenger.send(obtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e3) {
            Log.e("MR2Provider", "Could not send control request to service.", e3);
        }
    }
}
