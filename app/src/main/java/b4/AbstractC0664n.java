package b4;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: b4.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0664n {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f8515a = true;

    /* renamed from: b, reason: collision with root package name */
    public static final ExecutorService f8516b = Executors.newSingleThreadExecutor(new ThreadFactoryC0662l(1));

    public static void a(String str) {
    }

    public static void b(boolean z6) {
        f8515a = z6;
    }

    public static void a(String str, Throwable th) {
        if (f8515a) {
            f8516b.submit(new A4.n(27, str, th));
        }
    }
}
