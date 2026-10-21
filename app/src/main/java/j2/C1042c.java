package j2;

import java.io.File;
import java.io.IOException;

/* renamed from: j2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1042c {

    /* renamed from: a, reason: collision with root package name */
    public final C1043d f16945a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean[] f16946b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16947c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C1045f f16948d;

    public C1042c(C1045f c1045f, C1043d c1043d) {
        this.f16948d = c1045f;
        this.f16945a = c1043d;
        this.f16946b = c1043d.f16953e ? null : new boolean[c1045f.f16963p];
    }

    public void abort() throws IOException {
        C1045f.a(this.f16948d, this, false);
    }

    public void abortUnlessCommitted() {
        if (this.f16947c) {
            return;
        }
        try {
            abort();
        } catch (IOException unused) {
        }
    }

    public void commit() throws IOException {
        C1045f.a(this.f16948d, this, true);
        this.f16947c = true;
    }

    public File getFile(int i2) throws IOException {
        File dirtyFile;
        synchronized (this.f16948d) {
            try {
                C1043d c1043d = this.f16945a;
                if (c1043d.f16954f != this) {
                    throw new IllegalStateException();
                }
                if (!c1043d.f16953e) {
                    this.f16946b[i2] = true;
                }
                dirtyFile = c1043d.getDirtyFile(i2);
                this.f16948d.f16957b.mkdirs();
            } catch (Throwable th) {
                throw th;
            }
        }
        return dirtyFile;
    }
}
