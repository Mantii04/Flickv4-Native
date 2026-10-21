package a0;

import androidx.datastore.preferences.protobuf.D;

/* loaded from: classes.dex */
public final class i extends D {
    public i setBoolean(boolean z6) {
        copyOnWrite();
        j.i((j) this.f5749e, z6);
        return this;
    }

    public i setDouble(double d7) {
        copyOnWrite();
        j.g((j) this.f5749e, d7);
        return this;
    }

    public i setFloat(float f3) {
        copyOnWrite();
        j.j((j) this.f5749e, f3);
        return this;
    }

    public i setInteger(int i2) {
        copyOnWrite();
        j.k((j) this.f5749e, i2);
        return this;
    }

    public i setLong(long j7) {
        copyOnWrite();
        j.d((j) this.f5749e, j7);
        return this;
    }

    public i setString(String str) {
        copyOnWrite();
        j.e(str, (j) this.f5749e);
        return this;
    }

    public i setStringSet(g gVar) {
        copyOnWrite();
        j.f((j) this.f5749e, gVar);
        return this;
    }
}
