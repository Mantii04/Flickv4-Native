package j5;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import io.hopmonsdk.service.MoneytiserService;
import p5.BinderC1505d;

/* renamed from: j5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ServiceConnectionC1055a implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public MoneytiserService f17001a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f17002b;

    public MoneytiserService getMoneytiserService() {
        return this.f17001a;
    }

    public boolean isBound() {
        return this.f17002b;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f17001a = ((BinderC1505d) iBinder).getService();
        this.f17002b = true;
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f17002b = false;
    }
}
