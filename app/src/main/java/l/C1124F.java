package l;

import S.AbstractC0310d;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* renamed from: l.F, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1124F {

    /* renamed from: a, reason: collision with root package name */
    public final C1123E f17679a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f17680b = null;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f17681c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17682d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17683e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17684f;

    public C1124F(C1123E c1123e) {
        this.f17679a = c1123e;
    }

    public final void a() {
        C1123E c1123e = this.f17679a;
        Drawable checkMarkDrawable = AbstractC0310d.getCheckMarkDrawable(c1123e);
        if (checkMarkDrawable != null) {
            if (this.f17682d || this.f17683e) {
                Drawable mutate = E.c.wrap(checkMarkDrawable).mutate();
                if (this.f17682d) {
                    E.c.setTintList(mutate, this.f17680b);
                }
                if (this.f17683e) {
                    E.c.setTintMode(mutate, this.f17681c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(c1123e.getDrawableState());
                }
                c1123e.setCheckMarkDrawable(mutate);
            }
        }
    }
}
