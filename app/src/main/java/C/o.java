package C;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final ColorStateList f327a;

    /* renamed from: b, reason: collision with root package name */
    public final Configuration f328b;

    /* renamed from: c, reason: collision with root package name */
    public final int f329c;

    public o(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
        this.f327a = colorStateList;
        this.f328b = configuration;
        this.f329c = theme == null ? 0 : theme.hashCode();
    }
}
