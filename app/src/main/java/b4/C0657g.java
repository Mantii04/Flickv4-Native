package b4;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;

/* renamed from: b4.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0657g extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final String f8492a;

    /* renamed from: b, reason: collision with root package name */
    public final C0659i f8493b;

    public C0657g(Context context, String str) {
        super(context);
        this.f8492a = str;
        this.f8493b = new C0659i(context.getPackageManager(), str, context.getPackageName());
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getOpPackageName() {
        return this.f8492a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public PackageManager getPackageManager() {
        return this.f8493b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageName() {
        return this.f8492a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        return this;
    }
}
