package f1;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class p0 implements IBinder.DeathRecipient {

    /* renamed from: a, reason: collision with root package name */
    public final Messenger f14288a;

    /* renamed from: b, reason: collision with root package name */
    public final t0 f14289b;

    /* renamed from: c, reason: collision with root package name */
    public final Messenger f14290c;

    /* renamed from: f, reason: collision with root package name */
    public int f14293f;

    /* renamed from: g, reason: collision with root package name */
    public int f14294g;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ x0 f14296i;

    /* renamed from: d, reason: collision with root package name */
    public int f14291d = 1;

    /* renamed from: e, reason: collision with root package name */
    public int f14292e = 1;

    /* renamed from: h, reason: collision with root package name */
    public final SparseArray f14295h = new SparseArray();

    public p0(x0 x0Var, Messenger messenger) {
        this.f14296i = x0Var;
        this.f14288a = messenger;
        t0 t0Var = new t0(this);
        this.f14289b = t0Var;
        this.f14290c = new Messenger(t0Var);
    }

    public final boolean a(int i2, int i7, int i8, Bundle bundle, Bundle bundle2) {
        Message obtain = Message.obtain();
        obtain.what = i2;
        obtain.arg1 = i7;
        obtain.arg2 = i8;
        obtain.obj = bundle;
        obtain.setData(bundle2);
        obtain.replyTo = this.f14290c;
        try {
            this.f14288a.send(obtain);
            return true;
        } catch (DeadObjectException unused) {
            return false;
        } catch (RemoteException e3) {
            if (i2 == 2) {
                return false;
            }
            Log.e("MediaRouteProviderProxy", "Could not send message to service.", e3);
            return false;
        }
    }

    public void addMemberRoute(int i2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("memberRouteId", str);
        int i7 = this.f14291d;
        this.f14291d = i7 + 1;
        a(12, i7, i2, null, bundle);
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        this.f14296i.f14338j.post(new o0(this));
    }

    public int createDynamicGroupRouteController(String str, O o6) {
        int i2 = this.f14292e;
        this.f14292e = i2 + 1;
        int i7 = this.f14291d;
        this.f14291d = i7 + 1;
        Bundle bundle = new Bundle();
        bundle.putString("memberRouteId", str);
        a(11, i7, i2, null, bundle);
        this.f14295h.put(i7, o6);
        return i2;
    }

    public int createRouteController(String str, String str2) {
        int i2 = this.f14292e;
        this.f14292e = i2 + 1;
        Bundle bundle = new Bundle();
        bundle.putString("routeId", str);
        bundle.putString("routeGroupId", str2);
        int i7 = this.f14291d;
        this.f14291d = i7 + 1;
        a(3, i7, i2, null, bundle);
        return i2;
    }

    public void dispose() {
        a(2, 0, 0, null, null);
        this.f14289b.dispose();
        this.f14288a.getBinder().unlinkToDeath(this, 0);
        this.f14296i.f14338j.post(new n0(this));
    }

    public boolean onControlRequestFailed(int i2, String str, Bundle bundle) {
        SparseArray sparseArray = this.f14295h;
        O o6 = (O) sparseArray.get(i2);
        if (o6 == null) {
            return false;
        }
        sparseArray.remove(i2);
        o6.onError(str, bundle);
        return true;
    }

    public boolean onControlRequestSucceeded(int i2, Bundle bundle) {
        SparseArray sparseArray = this.f14295h;
        O o6 = (O) sparseArray.get(i2);
        if (o6 == null) {
            return false;
        }
        sparseArray.remove(i2);
        o6.onResult(bundle);
        return true;
    }

    public void onControllerReleasedByProvider(int i2) {
        r0 r0Var;
        x0 x0Var = this.f14296i;
        if (x0Var.f14342n == this) {
            ArrayList arrayList = x0Var.f14339k;
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    r0Var = null;
                    break;
                } else {
                    r0Var = (r0) it.next();
                    if (r0Var.getControllerId() == i2) {
                        break;
                    }
                }
            }
            q0 q0Var = x0Var.f14344p;
            if (q0Var != null && (r0Var instanceof F)) {
                X4.a aVar = (X4.a) q0Var;
                ((B0) aVar.f4237f).f14110b.releaseProviderController((x0) aVar.f4236e, (F) r0Var);
            }
            arrayList.remove(r0Var);
            r0Var.detachConnection();
            x0Var.e();
        }
    }

    public boolean onDescriptorChanged(Bundle bundle) {
        if (this.f14293f == 0) {
            return false;
        }
        I fromBundle = I.fromBundle(bundle);
        x0 x0Var = this.f14296i;
        if (x0Var.f14342n != this) {
            return true;
        }
        x0Var.setDescriptor(fromBundle);
        return true;
    }

    public void onDynamicGroupRouteControllerCreated(int i2, Bundle bundle) {
        SparseArray sparseArray = this.f14295h;
        O o6 = (O) sparseArray.get(i2);
        if (bundle == null || !bundle.containsKey("routeId")) {
            o6.onError("DynamicGroupRouteController is created without valid route id.", bundle);
        } else {
            sparseArray.remove(i2);
            o6.onResult(bundle);
        }
    }

    public boolean onDynamicRouteDescriptorsChanged(int i2, Bundle bundle) {
        if (this.f14293f == 0) {
            return false;
        }
        Bundle bundle2 = (Bundle) bundle.getParcelable("groupRoute");
        r0 r0Var = null;
        C0915v fromBundle = bundle2 != null ? C0915v.fromBundle(bundle2) : null;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("dynamicRoutes");
        ArrayList arrayList = new ArrayList();
        Iterator it = parcelableArrayList.iterator();
        while (it.hasNext()) {
            Bundle bundle3 = (Bundle) it.next();
            arrayList.add(bundle3 == null ? null : new C0880B(C0915v.fromBundle(bundle3.getBundle("mrDescriptor")), bundle3.getInt("selectionState", 1), bundle3.getBoolean("isUnselectable", false), bundle3.getBoolean("isGroupable", false), bundle3.getBoolean("isTransferable", false)));
        }
        x0 x0Var = this.f14296i;
        if (x0Var.f14342n == this) {
            Iterator it2 = x0Var.f14339k.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                r0 r0Var2 = (r0) it2.next();
                if (r0Var2.getControllerId() == i2) {
                    r0Var = r0Var2;
                    break;
                }
            }
            if (r0Var instanceof v0) {
                ((v0) r0Var).notifyDynamicRoutesChanged(fromBundle, arrayList);
            }
        }
        return true;
    }

    public void onGenericFailure(int i2) {
        if (i2 == this.f14294g) {
            this.f14294g = 0;
            x0 x0Var = this.f14296i;
            if (x0Var.f14342n == this) {
                x0Var.d();
            }
        }
        SparseArray sparseArray = this.f14295h;
        O o6 = (O) sparseArray.get(i2);
        if (o6 != null) {
            sparseArray.remove(i2);
            o6.onError(null, null);
        }
    }

    public boolean onRegistered(int i2, int i7, Bundle bundle) {
        if (this.f14293f != 0 || i2 != this.f14294g || i7 < 1) {
            return false;
        }
        this.f14294g = 0;
        this.f14293f = i7;
        I fromBundle = I.fromBundle(bundle);
        x0 x0Var = this.f14296i;
        if (x0Var.f14342n == this) {
            x0Var.setDescriptor(fromBundle);
        }
        if (x0Var.f14342n == this) {
            x0Var.f14343o = true;
            ArrayList arrayList = x0Var.f14339k;
            int size = arrayList.size();
            for (int i8 = 0; i8 < size; i8++) {
                ((r0) arrayList.get(i8)).attachConnection(x0Var.f14342n);
            }
            C0916w discoveryRequest = x0Var.getDiscoveryRequest();
            if (discoveryRequest != null) {
                x0Var.f14342n.setDiscoveryRequest(discoveryRequest);
            }
        }
        return true;
    }

    public boolean register() {
        int i2 = this.f14291d;
        this.f14291d = i2 + 1;
        this.f14294g = i2;
        if (!a(1, i2, 4, null, null)) {
            return false;
        }
        try {
            this.f14288a.getBinder().linkToDeath(this, 0);
            return true;
        } catch (RemoteException unused) {
            binderDied();
            return false;
        }
    }

    public void releaseRouteController(int i2) {
        int i7 = this.f14291d;
        this.f14291d = i7 + 1;
        a(4, i7, i2, null, null);
    }

    public void removeMemberRoute(int i2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("memberRouteId", str);
        int i7 = this.f14291d;
        this.f14291d = i7 + 1;
        a(13, i7, i2, null, bundle);
    }

    public void selectRoute(int i2) {
        int i7 = this.f14291d;
        this.f14291d = i7 + 1;
        a(5, i7, i2, null, null);
    }

    public void setDiscoveryRequest(C0916w c0916w) {
        int i2 = this.f14291d;
        this.f14291d = i2 + 1;
        a(10, i2, 0, c0916w != null ? c0916w.asBundle() : null, null);
    }

    public void setVolume(int i2, int i7) {
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i7);
        int i8 = this.f14291d;
        this.f14291d = i8 + 1;
        a(7, i8, i2, null, bundle);
    }

    public void unselectRoute(int i2, int i7) {
        Bundle bundle = new Bundle();
        bundle.putInt("unselectReason", i7);
        int i8 = this.f14291d;
        this.f14291d = i8 + 1;
        a(6, i8, i2, null, bundle);
    }

    public void updateMemberRoutes(int i2, List<String> list) {
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("memberRouteIds", new ArrayList<>(list));
        int i7 = this.f14291d;
        this.f14291d = i7 + 1;
        a(14, i7, i2, null, bundle);
    }

    public void updateVolume(int i2, int i7) {
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i7);
        int i8 = this.f14291d;
        this.f14291d = i8 + 1;
        a(8, i8, i2, null, bundle);
    }
}
