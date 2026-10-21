package h4;

import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes2.dex */
public abstract class n implements Cloneable {

    /* renamed from: n, reason: collision with root package name */
    public static final f f16580n = new f();

    /* renamed from: p, reason: collision with root package name */
    public static final d f16581p = new d();

    /* renamed from: b, reason: collision with root package name */
    public String f16582b;

    /* renamed from: e, reason: collision with root package name */
    public Class f16583e;

    /* renamed from: f, reason: collision with root package name */
    public k f16584f = null;

    /* renamed from: j, reason: collision with root package name */
    public final Object[] f16585j;

    /* renamed from: m, reason: collision with root package name */
    public o f16586m;

    static {
        new HashMap();
        new HashMap();
    }

    public n(String str) {
        new ReentrantReadWriteLock();
        this.f16585j = new Object[1];
        this.f16582b = str;
    }

    public static n ofFloat(String str, float... fArr) {
        return new l(str, fArr);
    }

    public static n ofInt(String str, int... iArr) {
        return new m(str, iArr);
    }

    public abstract void a(float f3);

    public abstract Object b();

    /* renamed from: clone */
    public n m97clone() {
        try {
            n nVar = (n) super.clone();
            nVar.f16582b = this.f16582b;
            nVar.f16584f = this.f16584f.m93clone();
            nVar.f16586m = this.f16586m;
            return nVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public String getPropertyName() {
        return this.f16582b;
    }

    public void setFloatValues(float... fArr) {
        this.f16583e = Float.TYPE;
        this.f16584f = k.ofFloat(fArr);
    }

    public void setIntValues(int... iArr) {
        this.f16583e = Integer.TYPE;
        this.f16584f = k.ofInt(iArr);
    }

    public String toString() {
        return this.f16582b + ": " + this.f16584f.toString();
    }
}
