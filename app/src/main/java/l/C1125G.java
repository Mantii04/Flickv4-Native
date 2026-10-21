package l;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;

/* renamed from: l.G, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1125G {

    /* renamed from: a, reason: collision with root package name */
    public final CompoundButton f17693a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f17694b = null;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f17695c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17696d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17697e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17698f;

    public C1125G(CompoundButton compoundButton) {
        this.f17693a = compoundButton;
    }

    public final void a() {
        CompoundButton compoundButton = this.f17693a;
        Drawable buttonDrawable = S.g.getButtonDrawable(compoundButton);
        if (buttonDrawable != null) {
            if (this.f17696d || this.f17697e) {
                Drawable mutate = E.c.wrap(buttonDrawable).mutate();
                if (this.f17696d) {
                    E.c.setTintList(mutate, this.f17694b);
                }
                if (this.f17697e) {
                    E.c.setTintMode(mutate, this.f17695c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0061 A[Catch: all -> 0x003b, TryCatch #1 {all -> 0x003b, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:9:0x0059, B:11:0x0061, B:12:0x006a, B:14:0x0072, B:21:0x003e, B:23:0x0046, B:25:0x004e), top: B:2:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0072 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #1 {all -> 0x003b, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:9:0x0059, B:11:0x0061, B:12:0x006a, B:14:0x0072, B:21:0x003e, B:23:0x0046, B:25:0x004e), top: B:2:0x001f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.util.AttributeSet r12, int r13) {
        /*
            r11 = this;
            android.widget.CompoundButton r0 = r11.f17693a
            android.content.Context r1 = r0.getContext()
            int[] r2 = androidx.appcompat.R.styleable.CompoundButton
            r3 = 0
            l.e2 r1 = l.e2.obtainStyledAttributes(r1, r12, r2, r13, r3)
            android.widget.CompoundButton r4 = r11.f17693a
            android.content.Context r5 = r4.getContext()
            int[] r6 = androidx.appcompat.R.styleable.CompoundButton
            android.content.res.TypedArray r8 = r1.getWrappedTypeArray()
            r10 = 0
            r7 = r12
            r9 = r13
            M.AbstractC0181p0.saveAttributeDataForStyleable(r4, r5, r6, r7, r8, r9, r10)
            int r12 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L3b
            boolean r12 = r1.hasValue(r12)     // Catch: java.lang.Throwable -> L3b
            if (r12 == 0) goto L3e
            int r12 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L3b
            int r12 = r1.getResourceId(r12, r3)     // Catch: java.lang.Throwable -> L3b
            if (r12 == 0) goto L3e
            android.content.Context r13 = r0.getContext()     // Catch: java.lang.Throwable -> L3b android.content.res.Resources.NotFoundException -> L3e
            android.graphics.drawable.Drawable r12 = f.AbstractC0876a.getDrawable(r13, r12)     // Catch: java.lang.Throwable -> L3b android.content.res.Resources.NotFoundException -> L3e
            r0.setButtonDrawable(r12)     // Catch: java.lang.Throwable -> L3b android.content.res.Resources.NotFoundException -> L3e
            goto L59
        L3b:
            r0 = move-exception
            r12 = r0
            goto L85
        L3e:
            int r12 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L3b
            boolean r12 = r1.hasValue(r12)     // Catch: java.lang.Throwable -> L3b
            if (r12 == 0) goto L59
            int r12 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L3b
            int r12 = r1.getResourceId(r12, r3)     // Catch: java.lang.Throwable -> L3b
            if (r12 == 0) goto L59
            android.content.Context r13 = r0.getContext()     // Catch: java.lang.Throwable -> L3b
            android.graphics.drawable.Drawable r12 = f.AbstractC0876a.getDrawable(r13, r12)     // Catch: java.lang.Throwable -> L3b
            r0.setButtonDrawable(r12)     // Catch: java.lang.Throwable -> L3b
        L59:
            int r12 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L3b
            boolean r12 = r1.hasValue(r12)     // Catch: java.lang.Throwable -> L3b
            if (r12 == 0) goto L6a
            int r12 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L3b
            android.content.res.ColorStateList r12 = r1.getColorStateList(r12)     // Catch: java.lang.Throwable -> L3b
            S.g.setButtonTintList(r0, r12)     // Catch: java.lang.Throwable -> L3b
        L6a:
            int r12 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L3b
            boolean r12 = r1.hasValue(r12)     // Catch: java.lang.Throwable -> L3b
            if (r12 == 0) goto L81
            int r12 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L3b
            r13 = -1
            int r12 = r1.getInt(r12, r13)     // Catch: java.lang.Throwable -> L3b
            r13 = 0
            android.graphics.PorterDuff$Mode r12 = l.P0.parseTintMode(r12, r13)     // Catch: java.lang.Throwable -> L3b
            S.g.setButtonTintMode(r0, r12)     // Catch: java.lang.Throwable -> L3b
        L81:
            r1.recycle()
            return
        L85:
            r1.recycle()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: l.C1125G.b(android.util.AttributeSet, int):void");
    }
}
