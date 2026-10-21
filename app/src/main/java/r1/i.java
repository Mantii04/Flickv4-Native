package r1;

import android.content.Context;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19715a;

    /* renamed from: b, reason: collision with root package name */
    public String f19716b;

    /* renamed from: c, reason: collision with root package name */
    public h f19717c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19718d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f19719e;

    public i(Context context) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        this.f19715a = context;
    }

    public i allowDataLossOnRecovery(boolean z6) {
        this.f19719e = z6;
        return this;
    }

    public k build() {
        String str;
        h hVar = this.f19717c;
        if (hVar == null) {
            throw new IllegalArgumentException("Must set a callback to create the configuration.");
        }
        if (this.f19718d && ((str = this.f19716b) == null || str.length() == 0)) {
            throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
        }
        return new k(this.f19715a, this.f19716b, hVar, this.f19718d, this.f19719e);
    }

    public i callback(h callback) {
        kotlin.jvm.internal.j.checkNotNullParameter(callback, "callback");
        this.f19717c = callback;
        return this;
    }

    public i name(String str) {
        this.f19716b = str;
        return this;
    }

    public i noBackupDirectory(boolean z6) {
        this.f19718d = z6;
        return this;
    }
}
