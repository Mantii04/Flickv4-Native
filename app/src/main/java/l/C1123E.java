package l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.appcompat.R;
import f.AbstractC0876a;

/* renamed from: l.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1123E extends CheckedTextView implements S.D {

    /* renamed from: b, reason: collision with root package name */
    public final C1124F f17674b;

    /* renamed from: e, reason: collision with root package name */
    public final C1120B f17675e;

    /* renamed from: f, reason: collision with root package name */
    public final C1199y0 f17676f;

    /* renamed from: j, reason: collision with root package name */
    public M f17677j;

    public C1123E(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    private M getEmojiTextViewHelper() {
        if (this.f17677j == null) {
            this.f17677j = new M(this);
        }
        return this.f17677j;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1199y0 c1199y0 = this.f17676f;
        if (c1199y0 != null) {
            c1199y0.b();
        }
        C1120B c1120b = this.f17675e;
        if (c1120b != null) {
            c1120b.a();
        }
        C1124F c1124f = this.f17674b;
        if (c1124f != null) {
            c1124f.a();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return S.A.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C1120B c1120b = this.f17675e;
        if (c1120b != null) {
            return c1120b.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C1120B c1120b = this.f17675e;
        if (c1120b != null) {
            return c1120b.c();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        C1124F c1124f = this.f17674b;
        if (c1124f != null) {
            return c1124f.f17680b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        C1124F c1124f = this.f17674b;
        if (c1124f != null) {
            return c1124f.f17681c;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17676f.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17676f.e();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        androidx.leanback.widget.W.f(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z6) {
        super.setAllCaps(z6);
        getEmojiTextViewHelper().b(z6);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1120B c1120b = this.f17675e;
        if (c1120b != null) {
            c1120b.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C1120B c1120b = this.f17675e;
        if (c1120b != null) {
            c1120b.f(i2);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C1124F c1124f = this.f17674b;
        if (c1124f != null) {
            if (c1124f.f17684f) {
                c1124f.f17684f = false;
            } else {
                c1124f.f17684f = true;
                c1124f.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f17676f;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f17676f;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(S.A.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z6) {
        getEmojiTextViewHelper().c(z6);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C1120B c1120b = this.f17675e;
        if (c1120b != null) {
            c1120b.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C1120B c1120b = this.f17675e;
        if (c1120b != null) {
            c1120b.i(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        C1124F c1124f = this.f17674b;
        if (c1124f != null) {
            c1124f.f17680b = colorStateList;
            c1124f.f17682d = true;
            c1124f.a();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        C1124F c1124f = this.f17674b;
        if (c1124f != null) {
            c1124f.f17681c = mode;
            c1124f.f17683e = true;
            c1124f.a();
        }
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C1199y0 c1199y0 = this.f17676f;
        c1199y0.k(colorStateList);
        c1199y0.b();
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C1199y0 c1199y0 = this.f17676f;
        c1199y0.l(mode);
        c1199y0.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C1199y0 c1199y0 = this.f17676f;
        if (c1199y0 != null) {
            c1199y0.g(context, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x008a A[Catch: all -> 0x0064, TryCatch #1 {all -> 0x0064, blocks: (B:3:0x0048, B:5:0x0050, B:8:0x0058, B:9:0x0082, B:11:0x008a, B:12:0x0093, B:14:0x009b, B:21:0x0067, B:23:0x006f, B:25:0x0077), top: B:2:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x009b A[Catch: all -> 0x0064, TRY_LEAVE, TryCatch #1 {all -> 0x0064, blocks: (B:3:0x0048, B:5:0x0050, B:8:0x0058, B:9:0x0082, B:11:0x008a, B:12:0x0093, B:14:0x009b, B:21:0x0067, B:23:0x006f, B:25:0x0077), top: B:2:0x0048 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1123E(android.content.Context r10, android.util.AttributeSet r11, int r12) {
        /*
            r9 = this;
            android.content.Context r10 = l.b2.wrap(r10)
            r9.<init>(r10, r11, r12)
            android.content.Context r10 = r9.getContext()
            l.a2.checkAppCompatTheme(r9, r10)
            l.y0 r10 = new l.y0
            r10.<init>(r9)
            r9.f17676f = r10
            r10.f(r11, r12)
            r10.b()
            l.B r10 = new l.B
            r10.<init>(r9)
            r9.f17675e = r10
            r10.d(r11, r12)
            l.F r10 = new l.F
            r10.<init>(r9)
            r9.f17674b = r10
            android.content.Context r10 = r9.getContext()
            int[] r0 = androidx.appcompat.R.styleable.CheckedTextView
            r1 = 0
            l.e2 r10 = l.e2.obtainStyledAttributes(r10, r11, r0, r12, r1)
            android.content.Context r3 = r9.getContext()
            int[] r4 = androidx.appcompat.R.styleable.CheckedTextView
            android.content.res.TypedArray r6 = r10.getWrappedTypeArray()
            r8 = 0
            r2 = r9
            r5 = r11
            r7 = r12
            M.AbstractC0181p0.saveAttributeDataForStyleable(r2, r3, r4, r5, r6, r7, r8)
            int r11 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkCompat     // Catch: java.lang.Throwable -> L64
            boolean r11 = r10.hasValue(r11)     // Catch: java.lang.Throwable -> L64
            if (r11 == 0) goto L67
            int r11 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkCompat     // Catch: java.lang.Throwable -> L64
            int r11 = r10.getResourceId(r11, r1)     // Catch: java.lang.Throwable -> L64
            if (r11 == 0) goto L67
            android.content.Context r12 = r9.getContext()     // Catch: java.lang.Throwable -> L64 android.content.res.Resources.NotFoundException -> L67
            android.graphics.drawable.Drawable r11 = f.AbstractC0876a.getDrawable(r12, r11)     // Catch: java.lang.Throwable -> L64 android.content.res.Resources.NotFoundException -> L67
            r9.setCheckMarkDrawable(r11)     // Catch: java.lang.Throwable -> L64 android.content.res.Resources.NotFoundException -> L67
            goto L82
        L64:
            r0 = move-exception
            r11 = r0
            goto Lb5
        L67:
            int r11 = androidx.appcompat.R.styleable.CheckedTextView_android_checkMark     // Catch: java.lang.Throwable -> L64
            boolean r11 = r10.hasValue(r11)     // Catch: java.lang.Throwable -> L64
            if (r11 == 0) goto L82
            int r11 = androidx.appcompat.R.styleable.CheckedTextView_android_checkMark     // Catch: java.lang.Throwable -> L64
            int r11 = r10.getResourceId(r11, r1)     // Catch: java.lang.Throwable -> L64
            if (r11 == 0) goto L82
            android.content.Context r12 = r9.getContext()     // Catch: java.lang.Throwable -> L64
            android.graphics.drawable.Drawable r11 = f.AbstractC0876a.getDrawable(r12, r11)     // Catch: java.lang.Throwable -> L64
            r9.setCheckMarkDrawable(r11)     // Catch: java.lang.Throwable -> L64
        L82:
            int r11 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkTint     // Catch: java.lang.Throwable -> L64
            boolean r11 = r10.hasValue(r11)     // Catch: java.lang.Throwable -> L64
            if (r11 == 0) goto L93
            int r11 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkTint     // Catch: java.lang.Throwable -> L64
            android.content.res.ColorStateList r11 = r10.getColorStateList(r11)     // Catch: java.lang.Throwable -> L64
            S.AbstractC0310d.setCheckMarkTintList(r9, r11)     // Catch: java.lang.Throwable -> L64
        L93:
            int r11 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkTintMode     // Catch: java.lang.Throwable -> L64
            boolean r11 = r10.hasValue(r11)     // Catch: java.lang.Throwable -> L64
            if (r11 == 0) goto Laa
            int r11 = androidx.appcompat.R.styleable.CheckedTextView_checkMarkTintMode     // Catch: java.lang.Throwable -> L64
            r12 = -1
            int r11 = r10.getInt(r11, r12)     // Catch: java.lang.Throwable -> L64
            r12 = 0
            android.graphics.PorterDuff$Mode r11 = l.P0.parseTintMode(r11, r12)     // Catch: java.lang.Throwable -> L64
            S.AbstractC0310d.setCheckMarkTintMode(r9, r11)     // Catch: java.lang.Throwable -> L64
        Laa:
            r10.recycle()
            l.M r10 = r9.getEmojiTextViewHelper()
            r10.a(r5, r7)
            return
        Lb5:
            r10.recycle()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: l.C1123E.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i2) {
        setCheckMarkDrawable(AbstractC0876a.getDrawable(getContext(), i2));
    }
}
