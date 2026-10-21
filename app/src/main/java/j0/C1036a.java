package j0;

import android.content.res.Resources;

/* renamed from: j0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1036a {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f16938a;

    /* renamed from: b, reason: collision with root package name */
    public final String f16939b;

    public C1036a(Resources resources, String str) {
        this.f16938a = resources;
        this.f16939b = str;
    }

    public boolean getBoolean(String str, boolean z6) {
        String str2 = this.f16939b;
        Resources resources = this.f16938a;
        int identifier = resources.getIdentifier(str, "bool", str2);
        return identifier > 0 ? resources.getBoolean(identifier) : z6;
    }
}
