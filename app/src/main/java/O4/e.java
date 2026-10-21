package O4;

import android.content.Context;
import flix.com.vision.api.FlixVisionApiService;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: c, reason: collision with root package name */
    public static e f2440c;

    /* renamed from: a, reason: collision with root package name */
    public final FlixVisionApiService f2441a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f2442b;

    public e(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f2442b = applicationContext;
        this.f2441a = D4.c.getApiService(applicationContext);
    }

    public static synchronized e getInstance(Context context) {
        e eVar;
        synchronized (e.class) {
            try {
                if (f2440c == null) {
                    f2440c = new e(context);
                }
                eVar = f2440c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    public void login(String str, String str2, d dVar) {
        this.f2441a.login(str, str2).enqueue(new b(this, dVar));
    }

    public void logout(d dVar) {
        this.f2441a.logout().enqueue(new c(this, dVar));
    }

    public void register(String str, String str2, String str3, d dVar) {
        this.f2441a.register(str, str2, str3).enqueue(new a(this, dVar));
    }
}
