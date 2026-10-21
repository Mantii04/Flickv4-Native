package com.google.android.gms.cast.framework.media.widget;

import com.google.android.gms.common.internal.Objects;

/* loaded from: classes.dex */
public final class zze {

    /* renamed from: a, reason: collision with root package name */
    public int f10233a;

    /* renamed from: b, reason: collision with root package name */
    public int f10234b;

    /* renamed from: c, reason: collision with root package name */
    public int f10235c;

    /* renamed from: d, reason: collision with root package name */
    public int f10236d;

    /* renamed from: e, reason: collision with root package name */
    public int f10237e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f10238f;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zze)) {
            return false;
        }
        zze zzeVar = (zze) obj;
        return this.f10233a == zzeVar.f10233a && this.f10234b == zzeVar.f10234b && this.f10235c == zzeVar.f10235c && this.f10236d == zzeVar.f10236d && this.f10237e == zzeVar.f10237e && this.f10238f == zzeVar.f10238f;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10233a), Integer.valueOf(this.f10234b), Integer.valueOf(this.f10235c), Integer.valueOf(this.f10236d), Integer.valueOf(this.f10237e), Boolean.valueOf(this.f10238f));
    }
}
