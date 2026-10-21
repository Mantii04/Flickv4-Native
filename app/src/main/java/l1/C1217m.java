package l1;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Objects;

/* renamed from: l1.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1217m {

    /* renamed from: a, reason: collision with root package name */
    public final int f18097a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18098b;

    /* renamed from: c, reason: collision with root package name */
    public final long f18099c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18100d;

    public C1217m(int i2, int i7, long j7, long j8) {
        this.f18097a = i2;
        this.f18098b = i7;
        this.f18099c = j7;
        this.f18100d = j8;
    }

    public static C1217m a(File file) {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            C1217m c1217m = new C1217m(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
            dataInputStream.close();
            return c1217m;
        } finally {
        }
    }

    public final void b(File file) {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f18097a);
            dataOutputStream.writeInt(this.f18098b);
            dataOutputStream.writeLong(this.f18099c);
            dataOutputStream.writeLong(this.f18100d);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof C1217m)) {
            C1217m c1217m = (C1217m) obj;
            if (this.f18098b == c1217m.f18098b && this.f18099c == c1217m.f18099c && this.f18097a == c1217m.f18097a && this.f18100d == c1217m.f18100d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f18098b), Long.valueOf(this.f18099c), Integer.valueOf(this.f18097a), Long.valueOf(this.f18100d));
    }
}
