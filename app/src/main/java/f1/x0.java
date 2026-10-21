package f1;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.Messenger;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class x0 extends G implements ServiceConnection {

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f14336q = 0;

    /* renamed from: i, reason: collision with root package name */
    public final ComponentName f14337i;

    /* renamed from: j, reason: collision with root package name */
    public final s0 f14338j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f14339k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f14340l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f14341m;

    /* renamed from: n, reason: collision with root package name */
    public p0 f14342n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f14343o;

    /* renamed from: p, reason: collision with root package name */
    public q0 f14344p;

    static {
        Log.isLoggable("MediaRouteProviderProxy", 3);
    }

    public x0(Context context, ComponentName componentName) {
        super(context, new E(componentName));
        this.f14339k = new ArrayList();
        this.f14337i = componentName;
        this.f14338j = new s0();
    }

    public final void a() {
        if (this.f14341m) {
            return;
        }
        Intent intent = new Intent("android.media.MediaRouteProviderService");
        intent.setComponent(this.f14337i);
        try {
            this.f14341m = getContext().bindService(intent, this, Build.VERSION.SDK_INT >= 29 ? 4097 : 1);
        } catch (SecurityException unused) {
        }
    }

    public final w0 b(String str, String str2) {
        I descriptor = getDescriptor();
        if (descriptor == null) {
            return null;
        }
        List<C0915v> routes = descriptor.getRoutes();
        int size = routes.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (routes.get(i2).getId().equals(str)) {
                w0 w0Var = new w0(this, str, str2);
                this.f14339k.add(w0Var);
                if (this.f14343o) {
                    w0Var.attachConnection(this.f14342n);
                }
                e();
                return w0Var;
            }
        }
        return null;
    }

    public final void c() {
        if (this.f14342n != null) {
            setDescriptor(null);
            this.f14343o = false;
            ArrayList arrayList = this.f14339k;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((r0) arrayList.get(i2)).detachConnection();
            }
            this.f14342n.dispose();
            this.f14342n = null;
        }
    }

    public final void d() {
        if (this.f14341m) {
            this.f14341m = false;
            c();
            try {
                getContext().unbindService(this);
            } catch (IllegalArgumentException e3) {
                Log.e("MediaRouteProviderProxy", this + ": unbindService failed", e3);
            }
        }
    }

    public final void e() {
        if (!this.f14340l || (getDiscoveryRequest() == null && this.f14339k.isEmpty())) {
            d();
        } else {
            a();
        }
    }

    public boolean hasComponentName(String str, String str2) {
        ComponentName componentName = this.f14337i;
        return componentName.getPackageName().equals(str) && componentName.getClassName().equals(str2);
    }

    @Override // f1.G
    public AbstractC0881C onCreateDynamicGroupRouteController(String str) {
        if (str == null) {
            throw new IllegalArgumentException("initialMemberRouteId cannot be null.");
        }
        I descriptor = getDescriptor();
        if (descriptor == null) {
            return null;
        }
        List<C0915v> routes = descriptor.getRoutes();
        int size = routes.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (routes.get(i2).getId().equals(str)) {
                v0 v0Var = new v0(this, str);
                this.f14339k.add(v0Var);
                if (this.f14343o) {
                    v0Var.attachConnection(this.f14342n);
                }
                e();
                return v0Var;
            }
        }
        return null;
    }

    @Override // f1.G
    public F onCreateRouteController(String str) {
        if (str != null) {
            return b(str, null);
        }
        throw new IllegalArgumentException("routeId cannot be null");
    }

    @Override // f1.G
    public void onDiscoveryRequestChanged(C0916w c0916w) {
        if (this.f14343o) {
            this.f14342n.setDiscoveryRequest(c0916w);
        }
        e();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f14341m) {
            c();
            Messenger messenger = iBinder != null ? new Messenger(iBinder) : null;
            if (J.isValidRemoteMessenger(messenger)) {
                p0 p0Var = new p0(this, messenger);
                if (p0Var.register()) {
                    this.f14342n = p0Var;
                    return;
                }
                return;
            }
            Log.e("MediaRouteProviderProxy", this + ": Service returned invalid messenger binder");
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        c();
    }

    public void rebindIfDisconnected() {
        if (this.f14342n == null && this.f14340l) {
            if (getDiscoveryRequest() == null && this.f14339k.isEmpty()) {
                return;
            }
            d();
            a();
        }
    }

    public void setControllerCallback(q0 q0Var) {
        this.f14344p = q0Var;
    }

    public void start() {
        if (this.f14340l) {
            return;
        }
        this.f14340l = true;
        e();
    }

    public void stop() {
        if (this.f14340l) {
            this.f14340l = false;
            e();
        }
    }

    public String toString() {
        return "Service connection " + this.f14337i.flattenToShortString();
    }

    @Override // f1.G
    public F onCreateRouteController(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        if (str2 != null) {
            return b(str, str2);
        }
        throw new IllegalArgumentException("routeGroupId cannot be null");
    }
}
