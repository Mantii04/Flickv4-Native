package androidx.datastore.preferences.protobuf;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract class G0 {

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f5761a;

    public G0(Unsafe unsafe) {
        this.f5761a = unsafe;
    }

    public final int arrayBaseOffset(Class<?> cls) {
        return this.f5761a.arrayBaseOffset(cls);
    }

    public final int arrayIndexScale(Class<?> cls) {
        return this.f5761a.arrayIndexScale(cls);
    }

    public abstract boolean getBoolean(Object obj, long j7);

    public abstract byte getByte(Object obj, long j7);

    public abstract double getDouble(Object obj, long j7);

    public abstract float getFloat(Object obj, long j7);

    public final int getInt(Object obj, long j7) {
        return this.f5761a.getInt(obj, j7);
    }

    public final long getLong(Object obj, long j7) {
        return this.f5761a.getLong(obj, j7);
    }

    public final Object getObject(Object obj, long j7) {
        return this.f5761a.getObject(obj, j7);
    }

    public final long objectFieldOffset(Field field) {
        return this.f5761a.objectFieldOffset(field);
    }

    public abstract void putBoolean(Object obj, long j7, boolean z6);

    public abstract void putByte(Object obj, long j7, byte b7);

    public abstract void putDouble(Object obj, long j7, double d7);

    public abstract void putFloat(Object obj, long j7, float f3);

    public final void putInt(Object obj, long j7, int i2) {
        this.f5761a.putInt(obj, j7, i2);
    }

    public final void putLong(Object obj, long j7, long j8) {
        this.f5761a.putLong(obj, j7, j8);
    }

    public final void putObject(Object obj, long j7, Object obj2) {
        this.f5761a.putObject(obj, j7, obj2);
    }
}
