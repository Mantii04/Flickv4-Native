package o2;

import android.util.Log;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;

/* renamed from: o2.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1438l implements InterfaceC1428b {

    /* renamed from: a, reason: collision with root package name */
    public final C1434h f19054a = new C1434h();

    /* renamed from: b, reason: collision with root package name */
    public final C1437k f19055b = new C1437k();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f19056c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f19057d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final int f19058e;

    /* renamed from: f, reason: collision with root package name */
    public int f19059f;

    public C1438l(int i2) {
        this.f19058e = i2;
    }

    public final void a(int i2, Class cls) {
        NavigableMap e3 = e(cls);
        Integer num = (Integer) e3.get(Integer.valueOf(i2));
        if (num != null) {
            if (num.intValue() == 1) {
                e3.remove(Integer.valueOf(i2));
                return;
            } else {
                e3.put(Integer.valueOf(i2), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i2 + ", this: " + this);
    }

    public final void b(int i2) {
        while (this.f19059f > i2) {
            Object removeLast = this.f19054a.removeLast();
            G2.r.checkNotNull(removeLast);
            InterfaceC1427a c7 = c(removeLast.getClass());
            this.f19059f -= c7.getElementSizeInBytes() * c7.getArrayLength(removeLast);
            a(c7.getArrayLength(removeLast), removeLast.getClass());
            if (Log.isLoggable(c7.getTag(), 2)) {
                Log.v(c7.getTag(), "evicted: " + c7.getArrayLength(removeLast));
            }
        }
    }

    public final InterfaceC1427a c(Class cls) {
        InterfaceC1427a c1432f;
        HashMap hashMap = this.f19057d;
        InterfaceC1427a interfaceC1427a = (InterfaceC1427a) hashMap.get(cls);
        if (interfaceC1427a != null) {
            return interfaceC1427a;
        }
        if (cls.equals(int[].class)) {
            c1432f = new C1435i();
        } else {
            if (!cls.equals(byte[].class)) {
                throw new IllegalArgumentException("No array pool found for: ".concat(cls.getSimpleName()));
            }
            c1432f = new C1432f();
        }
        hashMap.put(cls, c1432f);
        return c1432f;
    }

    public synchronized void clearMemory() {
        b(0);
    }

    public final Object d(C1436j c1436j, Class cls) {
        InterfaceC1427a c7 = c(cls);
        Object obj = this.f19054a.get(c1436j);
        if (obj != null) {
            this.f19059f -= c7.getElementSizeInBytes() * c7.getArrayLength(obj);
            a(c7.getArrayLength(obj), cls);
        }
        if (obj != null) {
            return obj;
        }
        if (Log.isLoggable(c7.getTag(), 2)) {
            Log.v(c7.getTag(), "Allocated " + c1436j.f19052b + " bytes");
        }
        return c7.newArray(c1436j.f19052b);
    }

    public final NavigableMap e(Class cls) {
        HashMap hashMap = this.f19056c;
        NavigableMap navigableMap = (NavigableMap) hashMap.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        hashMap.put(cls, treeMap);
        return treeMap;
    }

    public synchronized <T> T get(int i2, Class<T> cls) {
        C1436j c1436j;
        int i7;
        try {
            Integer num = (Integer) e(cls).ceilingKey(Integer.valueOf(i2));
            if (num == null || ((i7 = this.f19059f) != 0 && this.f19058e / i7 < 2 && num.intValue() > i2 * 8)) {
                C1437k c1437k = this.f19055b;
                InterfaceC1443q interfaceC1443q = (InterfaceC1443q) c1437k.f19044a.poll();
                if (interfaceC1443q == null) {
                    interfaceC1443q = c1437k.m110create();
                }
                c1436j = (C1436j) interfaceC1443q;
                c1436j.f19052b = i2;
                c1436j.f19053c = cls;
            }
            C1437k c1437k2 = this.f19055b;
            int intValue = num.intValue();
            InterfaceC1443q interfaceC1443q2 = (InterfaceC1443q) c1437k2.f19044a.poll();
            if (interfaceC1443q2 == null) {
                interfaceC1443q2 = c1437k2.m110create();
            }
            c1436j = (C1436j) interfaceC1443q2;
            c1436j.f19052b = intValue;
            c1436j.f19053c = cls;
        } catch (Throwable th) {
            throw th;
        }
        return (T) d(c1436j, cls);
    }

    public synchronized <T> T getExact(int i2, Class<T> cls) {
        C1436j c1436j;
        C1437k c1437k = this.f19055b;
        InterfaceC1443q interfaceC1443q = (InterfaceC1443q) c1437k.f19044a.poll();
        if (interfaceC1443q == null) {
            interfaceC1443q = c1437k.m110create();
        }
        c1436j = (C1436j) interfaceC1443q;
        c1436j.f19052b = i2;
        c1436j.f19053c = cls;
        return (T) d(c1436j, cls);
    }

    public synchronized <T> void put(T t6) {
        Class<?> cls = t6.getClass();
        InterfaceC1427a c7 = c(cls);
        int arrayLength = c7.getArrayLength(t6);
        int elementSizeInBytes = c7.getElementSizeInBytes() * arrayLength;
        if (elementSizeInBytes <= this.f19058e / 2) {
            C1437k c1437k = this.f19055b;
            InterfaceC1443q interfaceC1443q = (InterfaceC1443q) c1437k.f19044a.poll();
            if (interfaceC1443q == null) {
                interfaceC1443q = c1437k.m110create();
            }
            C1436j c1436j = (C1436j) interfaceC1443q;
            c1436j.f19052b = arrayLength;
            c1436j.f19053c = cls;
            this.f19054a.put(c1436j, t6);
            NavigableMap e3 = e(cls);
            Integer num = (Integer) e3.get(Integer.valueOf(c1436j.f19052b));
            Integer valueOf = Integer.valueOf(c1436j.f19052b);
            int i2 = 1;
            if (num != null) {
                i2 = 1 + num.intValue();
            }
            e3.put(valueOf, Integer.valueOf(i2));
            this.f19059f += elementSizeInBytes;
            b(this.f19058e);
        }
    }

    public synchronized void trimMemory(int i2) {
        try {
            if (i2 >= 40) {
                clearMemory();
            } else if (i2 >= 20 || i2 == 15) {
                b(this.f19058e / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
