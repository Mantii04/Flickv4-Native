package t1;

import A.i;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.concurrent.locks.Lock;
import kotlin.jvm.internal.j;

/* renamed from: t1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1648b {

    /* renamed from: e, reason: collision with root package name */
    public static final C1647a f20032e = new C1647a(null);

    /* renamed from: f, reason: collision with root package name */
    public static final HashMap f20033f = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f20034a;

    /* renamed from: b, reason: collision with root package name */
    public final File f20035b;

    /* renamed from: c, reason: collision with root package name */
    public final Lock f20036c;

    /* renamed from: d, reason: collision with root package name */
    public FileChannel f20037d;

    public C1648b(String name, File lockDir, boolean z6) {
        j.checkNotNullParameter(name, "name");
        j.checkNotNullParameter(lockDir, "lockDir");
        this.f20034a = z6;
        File file = new File(lockDir, i.B(name, ".lck"));
        this.f20035b = file;
        String absolutePath = file.getAbsolutePath();
        j.checkNotNullExpressionValue(absolutePath, "lockFile.absolutePath");
        this.f20036c = C1647a.access$getThreadLock(f20032e, absolutePath);
    }

    public static /* synthetic */ void lock$default(C1648b c1648b, boolean z6, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z6 = c1648b.f20034a;
        }
        c1648b.lock(z6);
    }

    public final void lock(boolean z6) {
        this.f20036c.lock();
        if (z6) {
            File file = this.f20035b;
            try {
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileChannel channel = new FileOutputStream(file).getChannel();
                channel.lock();
                this.f20037d = channel;
            } catch (IOException e3) {
                this.f20037d = null;
                Log.w("SupportSQLiteLock", "Unable to grab file lock.", e3);
            }
        }
    }

    public final void unlock() {
        try {
            FileChannel fileChannel = this.f20037d;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.f20036c.unlock();
    }
}
