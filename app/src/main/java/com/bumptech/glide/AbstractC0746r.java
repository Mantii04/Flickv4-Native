package com.bumptech.glide;

import G2.t;

/* renamed from: com.bumptech.glide.r, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0746r implements Cloneable {

    /* renamed from: b, reason: collision with root package name */
    public final E2.e f9401b = E2.b.getFactory();

    public boolean equals(Object obj) {
        if (obj instanceof AbstractC0746r) {
            return t.bothNullOrEqual(this.f9401b, ((AbstractC0746r) obj).f9401b);
        }
        return false;
    }

    public int hashCode() {
        E2.e eVar = this.f9401b;
        if (eVar != null) {
            return eVar.hashCode();
        }
        return 0;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final AbstractC0746r m66clone() {
        try {
            return (AbstractC0746r) super.clone();
        } catch (CloneNotSupportedException e3) {
            throw new RuntimeException(e3);
        }
    }
}
