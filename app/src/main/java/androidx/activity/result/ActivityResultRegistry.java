package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.r;
import d.AbstractC0771b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import z.AbstractC1960f;

/* loaded from: classes.dex */
public abstract class ActivityResultRegistry {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4890a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f4891b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f4892c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f4893d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final transient HashMap f4894e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f4895f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final Bundle f4896g = new Bundle();

    public final void a(String str) {
        HashMap hashMap = this.f4891b;
        if (((Integer) hashMap.get(str)) != null) {
            return;
        }
        int nextInt = K5.d.f1818b.nextInt(2147418112);
        while (true) {
            int i2 = nextInt + 65536;
            HashMap hashMap2 = this.f4890a;
            if (!hashMap2.containsKey(Integer.valueOf(i2))) {
                hashMap2.put(Integer.valueOf(i2), str);
                hashMap.put(str, Integer.valueOf(i2));
                return;
            }
            nextInt = K5.d.f1818b.nextInt(2147418112);
        }
    }

    public final void b(String str) {
        Integer num;
        if (!this.f4893d.contains(str) && (num = (Integer) this.f4891b.remove(str)) != null) {
            this.f4890a.remove(num);
        }
        this.f4894e.remove(str);
        HashMap hashMap = this.f4895f;
        if (hashMap.containsKey(str)) {
            StringBuilder t6 = A.i.t("Dropping pending result for request ", str, ": ");
            t6.append(hashMap.get(str));
            Log.w("ActivityResultRegistry", t6.toString());
            hashMap.remove(str);
        }
        Bundle bundle = this.f4896g;
        if (bundle.containsKey(str)) {
            StringBuilder t7 = A.i.t("Dropping pending result for request ", str, ": ");
            t7.append(bundle.getParcelable(str));
            Log.w("ActivityResultRegistry", t7.toString());
            bundle.remove(str);
        }
        HashMap hashMap2 = this.f4892c;
        h hVar = (h) hashMap2.get(str);
        if (hVar != null) {
            ArrayList arrayList = hVar.f4912b;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                hVar.f4911a.removeObserver((r) it.next());
            }
            arrayList.clear();
            hashMap2.remove(str);
        }
    }

    public final boolean dispatchResult(int i2, int i7, Intent intent) {
        c cVar;
        String str = (String) this.f4890a.get(Integer.valueOf(i2));
        if (str == null) {
            return false;
        }
        g gVar = (g) this.f4894e.get(str);
        if (gVar == null || (cVar = gVar.f4909a) == null || !this.f4893d.contains(str)) {
            this.f4895f.remove(str);
            this.f4896g.putParcelable(str, new b(i7, intent));
            return true;
        }
        cVar.onActivityResult(gVar.f4910b.parseResult(i7, intent));
        this.f4893d.remove(str);
        return true;
    }

    public abstract <I, O> void onLaunch(int i2, AbstractC0771b abstractC0771b, @SuppressLint({"UnknownNullness"}) I i7, AbstractC1960f abstractC1960f);

    public final void onRestoreInstanceState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        this.f4893d = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        Bundle bundle2 = bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
        Bundle bundle3 = this.f4896g;
        bundle3.putAll(bundle2);
        for (int i2 = 0; i2 < stringArrayList.size(); i2++) {
            String str = stringArrayList.get(i2);
            HashMap hashMap = this.f4891b;
            boolean containsKey = hashMap.containsKey(str);
            HashMap hashMap2 = this.f4890a;
            if (containsKey) {
                Integer num = (Integer) hashMap.remove(str);
                if (!bundle3.containsKey(str)) {
                    hashMap2.remove(num);
                }
            }
            Integer num2 = integerArrayList.get(i2);
            num2.intValue();
            String str2 = stringArrayList.get(i2);
            hashMap2.put(num2, str2);
            hashMap.put(str2, num2);
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        HashMap hashMap = this.f4891b;
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(hashMap.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(hashMap.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.f4893d));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) this.f4896g.clone());
    }

    public final <I, O> d register(final String str, InterfaceC0561t interfaceC0561t, final AbstractC0771b abstractC0771b, final c cVar) {
        AbstractC0557o lifecycle = interfaceC0561t.getLifecycle();
        if (lifecycle.getCurrentState().isAtLeast(Lifecycle$State.f6970j)) {
            throw new IllegalStateException("LifecycleOwner " + interfaceC0561t + " is attempting to register while current state is " + lifecycle.getCurrentState() + ". LifecycleOwners must call register before they are STARTED.");
        }
        a(str);
        HashMap hashMap = this.f4892c;
        h hVar = (h) hashMap.get(str);
        if (hVar == null) {
            hVar = new h(lifecycle);
        }
        r rVar = new r() { // from class: androidx.activity.result.ActivityResultRegistry.1
            @Override // androidx.lifecycle.r
            public void onStateChanged(InterfaceC0561t interfaceC0561t2, Lifecycle$Event lifecycle$Event) {
                boolean equals = Lifecycle$Event.ON_START.equals(lifecycle$Event);
                ActivityResultRegistry activityResultRegistry = ActivityResultRegistry.this;
                String str2 = str;
                HashMap hashMap2 = activityResultRegistry.f4894e;
                if (!equals) {
                    if (Lifecycle$Event.ON_STOP.equals(lifecycle$Event)) {
                        hashMap2.remove(str2);
                        return;
                    } else {
                        if (Lifecycle$Event.ON_DESTROY.equals(lifecycle$Event)) {
                            activityResultRegistry.b(str2);
                            return;
                        }
                        return;
                    }
                }
                c cVar2 = cVar;
                AbstractC0771b abstractC0771b2 = abstractC0771b;
                hashMap2.put(str2, new g(abstractC0771b2, cVar2));
                HashMap hashMap3 = activityResultRegistry.f4895f;
                if (hashMap3.containsKey(str2)) {
                    Object obj = hashMap3.get(str2);
                    hashMap3.remove(str2);
                    cVar2.onActivityResult(obj);
                }
                Bundle bundle = activityResultRegistry.f4896g;
                b bVar = (b) bundle.getParcelable(str2);
                if (bVar != null) {
                    bundle.remove(str2);
                    cVar2.onActivityResult(abstractC0771b2.parseResult(bVar.getResultCode(), bVar.getData()));
                }
            }
        };
        hVar.f4911a.addObserver(rVar);
        hVar.f4912b.add(rVar);
        hashMap.put(str, hVar);
        return new e(this, str, abstractC0771b);
    }

    public final <O> boolean dispatchResult(int i2, @SuppressLint({"UnknownNullness"}) O o6) {
        c cVar;
        String str = (String) this.f4890a.get(Integer.valueOf(i2));
        if (str == null) {
            return false;
        }
        g gVar = (g) this.f4894e.get(str);
        if (gVar != null && (cVar = gVar.f4909a) != null) {
            if (!this.f4893d.remove(str)) {
                return true;
            }
            cVar.onActivityResult(o6);
            return true;
        }
        this.f4896g.remove(str);
        this.f4895f.put(str, o6);
        return true;
    }

    public final <I, O> d register(String str, AbstractC0771b abstractC0771b, c cVar) {
        a(str);
        this.f4894e.put(str, new g(abstractC0771b, cVar));
        HashMap hashMap = this.f4895f;
        if (hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            hashMap.remove(str);
            cVar.onActivityResult(obj);
        }
        Bundle bundle = this.f4896g;
        b bVar = (b) bundle.getParcelable(str);
        if (bVar != null) {
            bundle.remove(str);
            cVar.onActivityResult(abstractC0771b.parseResult(bVar.getResultCode(), bVar.getData()));
        }
        return new f(this, str, abstractC0771b);
    }
}
