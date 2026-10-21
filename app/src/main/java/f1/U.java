package f1;

import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class U {

    /* renamed from: a, reason: collision with root package name */
    public final S f14184a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14185b;

    /* renamed from: c, reason: collision with root package name */
    public final String f14186c;

    /* renamed from: d, reason: collision with root package name */
    public String f14187d;

    /* renamed from: e, reason: collision with root package name */
    public String f14188e;

    /* renamed from: f, reason: collision with root package name */
    public Uri f14189f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14190g;

    /* renamed from: h, reason: collision with root package name */
    public int f14191h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f14192i;

    /* renamed from: k, reason: collision with root package name */
    public int f14194k;

    /* renamed from: l, reason: collision with root package name */
    public int f14195l;

    /* renamed from: m, reason: collision with root package name */
    public int f14196m;

    /* renamed from: n, reason: collision with root package name */
    public int f14197n;

    /* renamed from: o, reason: collision with root package name */
    public int f14198o;

    /* renamed from: p, reason: collision with root package name */
    public int f14199p;

    /* renamed from: r, reason: collision with root package name */
    public Bundle f14201r;

    /* renamed from: s, reason: collision with root package name */
    public IntentSender f14202s;

    /* renamed from: t, reason: collision with root package name */
    public C0915v f14203t;

    /* renamed from: v, reason: collision with root package name */
    public p.g f14205v;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f14193j = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public int f14200q = -1;

    /* renamed from: u, reason: collision with root package name */
    public ArrayList f14204u = new ArrayList();

    public U(S s6, String str, String str2) {
        this.f14184a = s6;
        this.f14185b = str;
        this.f14186c = str2;
    }

    public final boolean a() {
        return this.f14203t != null && this.f14190g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e5, code lost:
    
        if (r4.hasNext() == false) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b(f1.C0915v r13) {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f1.U.b(f1.v):int");
    }

    public final void c(Collection collection) {
        U u6;
        this.f14204u.clear();
        if (this.f14205v == null) {
            this.f14205v = new p.g();
        }
        this.f14205v.clear();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            C0880B c0880b = (C0880B) it.next();
            String id = c0880b.getRouteDescriptor().getId();
            Iterator it2 = getProvider().f14179b.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    u6 = null;
                    break;
                } else {
                    u6 = (U) it2.next();
                    if (u6.f14185b.equals(id)) {
                        break;
                    }
                }
            }
            if (u6 != null) {
                this.f14205v.put(u6.f14186c, c0880b);
                if (c0880b.getSelectionState() == 2 || c0880b.getSelectionState() == 3) {
                    this.f14204u.add(u6);
                }
            }
        }
        X.b().f14250m.b(259, this);
    }

    public boolean canDisconnect() {
        return this.f14192i;
    }

    public int getConnectionState() {
        return this.f14191h;
    }

    public String getDescription() {
        return this.f14188e;
    }

    public int getDeviceType() {
        return this.f14196m;
    }

    public AbstractC0881C getDynamicGroupController() {
        X.a();
        F f3 = X.b().f14257t;
        if (f3 instanceof AbstractC0881C) {
            return (AbstractC0881C) f3;
        }
        return null;
    }

    public T getDynamicGroupState(U u6) {
        if (u6 == null) {
            throw new NullPointerException("route must not be null");
        }
        p.g gVar = this.f14205v;
        if (gVar == null) {
            return null;
        }
        String str = u6.f14186c;
        if (gVar.containsKey(str)) {
            return new T((C0880B) this.f14205v.get(str));
        }
        return null;
    }

    public Bundle getExtras() {
        return this.f14201r;
    }

    public Uri getIconUri() {
        return this.f14189f;
    }

    public String getId() {
        return this.f14186c;
    }

    public List<U> getMemberRoutes() {
        return Collections.unmodifiableList(this.f14204u);
    }

    public String getName() {
        return this.f14187d;
    }

    public int getPlaybackStream() {
        return this.f14195l;
    }

    public int getPlaybackType() {
        return this.f14194k;
    }

    public int getPresentationDisplayId() {
        return this.f14200q;
    }

    public S getProvider() {
        return this.f14184a;
    }

    public G getProviderInstance() {
        return this.f14184a.getProviderInstance();
    }

    public int getVolume() {
        return this.f14198o;
    }

    public int getVolumeHandling() {
        if (!isGroup() || X.isGroupVolumeUxEnabled()) {
            return this.f14197n;
        }
        return 0;
    }

    public int getVolumeMax() {
        return this.f14199p;
    }

    public boolean isDefault() {
        X.a();
        U u6 = X.b().f14254q;
        if (u6 != null) {
            return u6 == this;
        }
        throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
    }

    public boolean isDefaultOrBluetooth() {
        if (isDefault() || this.f14196m == 3) {
            return true;
        }
        return TextUtils.equals(getProviderInstance().getMetadata().getPackageName(), "android") && supportsControlCategory("android.media.intent.category.LIVE_AUDIO") && !supportsControlCategory("android.media.intent.category.LIVE_VIDEO");
    }

    public boolean isEnabled() {
        return this.f14190g;
    }

    public boolean isGroup() {
        return getMemberRoutes().size() >= 1;
    }

    public boolean isSelected() {
        X.a();
        return X.b().e() == this;
    }

    public boolean matchesSelector(L l7) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        X.a();
        return l7.matchesControlFilters(this.f14193j);
    }

    public void requestSetVolume(int i2) {
        F f3;
        F f7;
        X.a();
        C0903k b7 = X.b();
        int min = Math.min(this.f14199p, Math.max(0, i2));
        if (this == b7.f14256s && (f7 = b7.f14257t) != null) {
            f7.onSetVolume(min);
            return;
        }
        HashMap hashMap = b7.f14260w;
        if (hashMap.isEmpty() || (f3 = (F) hashMap.get(this.f14186c)) == null) {
            return;
        }
        f3.onSetVolume(min);
    }

    public void requestUpdateVolume(int i2) {
        F f3;
        F f7;
        X.a();
        if (i2 != 0) {
            C0903k b7 = X.b();
            if (this == b7.f14256s && (f7 = b7.f14257t) != null) {
                f7.onUpdateVolume(i2);
                return;
            }
            HashMap hashMap = b7.f14260w;
            if (hashMap.isEmpty() || (f3 = (F) hashMap.get(this.f14186c)) == null) {
                return;
            }
            f3.onUpdateVolume(i2);
        }
    }

    public void select() {
        X.a();
        X.b().i(this, 3);
    }

    public boolean supportsControlCategory(String str) {
        if (str == null) {
            throw new IllegalArgumentException("category must not be null");
        }
        X.a();
        Iterator it = this.f14193j.iterator();
        while (it.hasNext()) {
            if (((IntentFilter) it.next()).hasCategory(str)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MediaRouter.RouteInfo{ uniqueId=");
        sb.append(this.f14186c);
        sb.append(", name=");
        sb.append(this.f14187d);
        sb.append(", description=");
        sb.append(this.f14188e);
        sb.append(", iconUri=");
        sb.append(this.f14189f);
        sb.append(", enabled=");
        sb.append(this.f14190g);
        sb.append(", connectionState=");
        sb.append(this.f14191h);
        sb.append(", canDisconnect=");
        sb.append(this.f14192i);
        sb.append(", playbackType=");
        sb.append(this.f14194k);
        sb.append(", playbackStream=");
        sb.append(this.f14195l);
        sb.append(", deviceType=");
        sb.append(this.f14196m);
        sb.append(", volumeHandling=");
        sb.append(this.f14197n);
        sb.append(", volume=");
        sb.append(this.f14198o);
        sb.append(", volumeMax=");
        sb.append(this.f14199p);
        sb.append(", presentationDisplayId=");
        sb.append(this.f14200q);
        sb.append(", extras=");
        sb.append(this.f14201r);
        sb.append(", settingsIntent=");
        sb.append(this.f14202s);
        sb.append(", providerPackageName=");
        sb.append(this.f14184a.getPackageName());
        if (isGroup()) {
            sb.append(", members=[");
            int size = this.f14204u.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 > 0) {
                    sb.append(", ");
                }
                if (this.f14204u.get(i2) != this) {
                    sb.append(((U) this.f14204u.get(i2)).getId());
                }
            }
            sb.append(']');
        }
        sb.append(" }");
        return sb.toString();
    }
}
