package f1;

import android.content.ComponentName;
import android.content.Context;

/* loaded from: classes.dex */
public abstract class G {

    /* renamed from: a, reason: collision with root package name */
    public final Context f14133a;

    /* renamed from: b, reason: collision with root package name */
    public final E f14134b;

    /* renamed from: c, reason: collision with root package name */
    public final HandlerC0882D f14135c;

    /* renamed from: d, reason: collision with root package name */
    public AbstractC0917x f14136d;

    /* renamed from: e, reason: collision with root package name */
    public C0916w f14137e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14138f;

    /* renamed from: g, reason: collision with root package name */
    public I f14139g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f14140h;

    public G(Context context) {
        this(context, null);
    }

    public final Context getContext() {
        return this.f14133a;
    }

    public final I getDescriptor() {
        return this.f14139g;
    }

    public final C0916w getDiscoveryRequest() {
        return this.f14137e;
    }

    public final E getMetadata() {
        return this.f14134b;
    }

    public AbstractC0881C onCreateDynamicGroupRouteController(String str) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("initialMemberRouteId cannot be null.");
    }

    public abstract F onCreateRouteController(String str);

    public F onCreateRouteController(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        if (str2 != null) {
            return onCreateRouteController(str);
        }
        throw new IllegalArgumentException("routeGroupId cannot be null");
    }

    public abstract void onDiscoveryRequestChanged(C0916w c0916w);

    public final void setCallback(AbstractC0917x abstractC0917x) {
        X.a();
        this.f14136d = abstractC0917x;
    }

    public final void setDescriptor(I i2) {
        X.a();
        if (this.f14139g != i2) {
            this.f14139g = i2;
            if (this.f14140h) {
                return;
            }
            this.f14140h = true;
            this.f14135c.sendEmptyMessage(1);
        }
    }

    public final void setDiscoveryRequest(C0916w c0916w) {
        X.a();
        if (L.c.equals(this.f14137e, c0916w)) {
            return;
        }
        this.f14137e = c0916w;
        if (this.f14138f) {
            return;
        }
        this.f14138f = true;
        this.f14135c.sendEmptyMessage(2);
    }

    public G(Context context, E e3) {
        this.f14135c = new HandlerC0882D(this);
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        this.f14133a = context;
        if (e3 == null) {
            this.f14134b = new E(new ComponentName(context, getClass()));
        } else {
            this.f14134b = e3;
        }
    }
}
