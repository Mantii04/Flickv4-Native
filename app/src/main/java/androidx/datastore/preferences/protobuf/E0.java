package androidx.datastore.preferences.protobuf;

/* loaded from: classes.dex */
public final class E0 extends G0 {
    @Override // androidx.datastore.preferences.protobuf.G0
    public boolean getBoolean(Object obj, long j7) {
        return H0.f5776h ? H0.g(j7, obj) != 0 : H0.h(j7, obj) != 0;
    }

    @Override // androidx.datastore.preferences.protobuf.G0
    public byte getByte(Object obj, long j7) {
        return H0.f5776h ? H0.g(j7, obj) : H0.h(j7, obj);
    }

    @Override // androidx.datastore.preferences.protobuf.G0
    public double getDouble(Object obj, long j7) {
        return Double.longBitsToDouble(getLong(obj, j7));
    }

    @Override // androidx.datastore.preferences.protobuf.G0
    public float getFloat(Object obj, long j7) {
        return Float.intBitsToFloat(getInt(obj, j7));
    }

    @Override // androidx.datastore.preferences.protobuf.G0
    public void putBoolean(Object obj, long j7, boolean z6) {
        if (H0.f5776h) {
            H0.k(obj, j7, z6 ? (byte) 1 : (byte) 0);
        } else {
            H0.l(obj, j7, z6 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.G0
    public void putByte(Object obj, long j7, byte b7) {
        if (H0.f5776h) {
            H0.k(obj, j7, b7);
        } else {
            H0.l(obj, j7, b7);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.G0
    public void putDouble(Object obj, long j7, double d7) {
        putLong(obj, j7, Double.doubleToLongBits(d7));
    }

    @Override // androidx.datastore.preferences.protobuf.G0
    public void putFloat(Object obj, long j7, float f3) {
        putInt(obj, j7, Float.floatToIntBits(f3));
    }
}
