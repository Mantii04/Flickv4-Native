package androidx.appcompat.widget;

import M.AbstractC0181p0;
import S.A;
import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.emoji2.text.p;
import cz.msebera.android.httpclient.message.TokenParser;
import f.AbstractC0876a;
import i.C1001a;
import l.C1199y0;
import l.M;
import l.P0;
import l.X1;
import l.Y1;
import l.Z1;
import l.a2;
import l.e2;
import l.z2;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {

    /* renamed from: d0, reason: collision with root package name */
    public static final X1 f5091d0 = new X1(Float.class, "thumbPos");

    /* renamed from: e0, reason: collision with root package name */
    public static final int[] f5092e0 = {R.attr.state_checked};

    /* renamed from: A, reason: collision with root package name */
    public CharSequence f5093A;

    /* renamed from: B, reason: collision with root package name */
    public boolean f5094B;

    /* renamed from: C, reason: collision with root package name */
    public int f5095C;

    /* renamed from: D, reason: collision with root package name */
    public final int f5096D;

    /* renamed from: E, reason: collision with root package name */
    public float f5097E;

    /* renamed from: F, reason: collision with root package name */
    public float f5098F;

    /* renamed from: G, reason: collision with root package name */
    public final VelocityTracker f5099G;

    /* renamed from: H, reason: collision with root package name */
    public final int f5100H;

    /* renamed from: I, reason: collision with root package name */
    public float f5101I;

    /* renamed from: J, reason: collision with root package name */
    public int f5102J;

    /* renamed from: K, reason: collision with root package name */
    public int f5103K;

    /* renamed from: L, reason: collision with root package name */
    public int f5104L;

    /* renamed from: M, reason: collision with root package name */
    public int f5105M;

    /* renamed from: N, reason: collision with root package name */
    public int f5106N;

    /* renamed from: O, reason: collision with root package name */
    public int f5107O;

    /* renamed from: P, reason: collision with root package name */
    public int f5108P;

    /* renamed from: Q, reason: collision with root package name */
    public boolean f5109Q;

    /* renamed from: R, reason: collision with root package name */
    public final TextPaint f5110R;

    /* renamed from: S, reason: collision with root package name */
    public ColorStateList f5111S;

    /* renamed from: T, reason: collision with root package name */
    public StaticLayout f5112T;

    /* renamed from: U, reason: collision with root package name */
    public StaticLayout f5113U;

    /* renamed from: V, reason: collision with root package name */
    public C1001a f5114V;

    /* renamed from: W, reason: collision with root package name */
    public ObjectAnimator f5115W;

    /* renamed from: a0, reason: collision with root package name */
    public M f5116a0;

    /* renamed from: b, reason: collision with root package name */
    public Drawable f5117b;

    /* renamed from: b0, reason: collision with root package name */
    public Z1 f5118b0;

    /* renamed from: c0, reason: collision with root package name */
    public final Rect f5119c0;

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f5120e;

    /* renamed from: f, reason: collision with root package name */
    public PorterDuff.Mode f5121f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f5122j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f5123m;

    /* renamed from: n, reason: collision with root package name */
    public Drawable f5124n;

    /* renamed from: p, reason: collision with root package name */
    public ColorStateList f5125p;

    /* renamed from: q, reason: collision with root package name */
    public PorterDuff.Mode f5126q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f5127r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f5128s;

    /* renamed from: t, reason: collision with root package name */
    public int f5129t;

    /* renamed from: u, reason: collision with root package name */
    public int f5130u;

    /* renamed from: v, reason: collision with root package name */
    public int f5131v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f5132w;

    /* renamed from: x, reason: collision with root package name */
    public CharSequence f5133x;

    /* renamed from: y, reason: collision with root package name */
    public CharSequence f5134y;

    /* renamed from: z, reason: collision with root package name */
    public CharSequence f5135z;

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.switchStyle);
    }

    private M getEmojiTextViewHelper() {
        if (this.f5116a0 == null) {
            this.f5116a0 = new M(this);
        }
        return this.f5116a0;
    }

    private boolean getTargetCheckedState() {
        return this.f5101I > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((z2.isLayoutRtl(this) ? 1.0f - this.f5101I : this.f5101I) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f5124n;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f5119c0;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f5117b;
        Rect opticalBounds = drawable2 != null ? P0.getOpticalBounds(drawable2) : P0.f17760c;
        return ((((this.f5102J - this.f5104L) - rect.left) - rect.right) - opticalBounds.left) - opticalBounds.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f5135z = charSequence;
        TransformationMethod wrapTransformationMethod = getEmojiTextViewHelper().wrapTransformationMethod(this.f5114V);
        if (wrapTransformationMethod != null) {
            charSequence = wrapTransformationMethod.getTransformation(charSequence, this);
        }
        this.f5093A = charSequence;
        this.f5113U = null;
        if (this.f5094B) {
            d();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f5133x = charSequence;
        TransformationMethod wrapTransformationMethod = getEmojiTextViewHelper().wrapTransformationMethod(this.f5114V);
        if (wrapTransformationMethod != null) {
            charSequence = wrapTransformationMethod.getTransformation(charSequence, this);
        }
        this.f5134y = charSequence;
        this.f5112T = null;
        if (this.f5094B) {
            d();
        }
    }

    public final void a() {
        Drawable drawable = this.f5117b;
        if (drawable != null) {
            if (this.f5122j || this.f5123m) {
                Drawable mutate = E.c.wrap(drawable).mutate();
                this.f5117b = mutate;
                if (this.f5122j) {
                    E.c.setTintList(mutate, this.f5120e);
                }
                if (this.f5123m) {
                    E.c.setTintMode(this.f5117b, this.f5121f);
                }
                if (this.f5117b.isStateful()) {
                    this.f5117b.setState(getDrawableState());
                }
            }
        }
    }

    public final void b() {
        Drawable drawable = this.f5124n;
        if (drawable != null) {
            if (this.f5127r || this.f5128s) {
                Drawable mutate = E.c.wrap(drawable).mutate();
                this.f5124n = mutate;
                if (this.f5127r) {
                    E.c.setTintList(mutate, this.f5125p);
                }
                if (this.f5128s) {
                    E.c.setTintMode(this.f5124n, this.f5126q);
                }
                if (this.f5124n.isStateful()) {
                    this.f5124n.setState(getDrawableState());
                }
            }
        }
    }

    public final void c() {
        setTextOnInternal(this.f5133x);
        setTextOffInternal(this.f5135z);
        requestLayout();
    }

    public final void d() {
        if (this.f5118b0 == null && this.f5116a0.isEnabled() && p.isConfigured()) {
            p pVar = p.get();
            int loadState = pVar.getLoadState();
            if (loadState == 3 || loadState == 0) {
                Z1 z12 = new Z1(this);
                this.f5118b0 = z12;
                pVar.registerInitCallback(z12);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i2;
        int i7;
        int i8 = this.f5105M;
        int i9 = this.f5106N;
        int i10 = this.f5107O;
        int i11 = this.f5108P;
        int thumbOffset = getThumbOffset() + i8;
        Drawable drawable = this.f5117b;
        Rect opticalBounds = drawable != null ? P0.getOpticalBounds(drawable) : P0.f17760c;
        Drawable drawable2 = this.f5124n;
        Rect rect = this.f5119c0;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i12 = rect.left;
            thumbOffset += i12;
            if (opticalBounds != null) {
                int i13 = opticalBounds.left;
                if (i13 > i12) {
                    i8 += i13 - i12;
                }
                int i14 = opticalBounds.top;
                int i15 = rect.top;
                i2 = i14 > i15 ? (i14 - i15) + i9 : i9;
                int i16 = opticalBounds.right;
                int i17 = rect.right;
                if (i16 > i17) {
                    i10 -= i16 - i17;
                }
                int i18 = opticalBounds.bottom;
                int i19 = rect.bottom;
                if (i18 > i19) {
                    i7 = i11 - (i18 - i19);
                    this.f5124n.setBounds(i8, i2, i10, i7);
                }
            } else {
                i2 = i9;
            }
            i7 = i11;
            this.f5124n.setBounds(i8, i2, i10, i7);
        }
        Drawable drawable3 = this.f5117b;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i20 = thumbOffset - rect.left;
            int i21 = thumbOffset + this.f5104L + rect.right;
            this.f5117b.setBounds(i20, i9, i21, i11);
            Drawable background = getBackground();
            if (background != null) {
                E.c.setHotspotBounds(background, i20, i9, i21, i11);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f3, float f7) {
        super.drawableHotspotChanged(f3, f7);
        Drawable drawable = this.f5117b;
        if (drawable != null) {
            E.c.setHotspot(drawable, f3, f7);
        }
        Drawable drawable2 = this.f5124n;
        if (drawable2 != null) {
            E.c.setHotspot(drawable2, f3, f7);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f5117b;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f5124n;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!z2.isLayoutRtl(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f5102J;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f5131v : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (z2.isLayoutRtl(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f5102J;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f5131v : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return A.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f5094B;
    }

    public boolean getSplitTrack() {
        return this.f5132w;
    }

    public int getSwitchMinWidth() {
        return this.f5130u;
    }

    public int getSwitchPadding() {
        return this.f5131v;
    }

    public CharSequence getTextOff() {
        return this.f5135z;
    }

    public CharSequence getTextOn() {
        return this.f5133x;
    }

    public Drawable getThumbDrawable() {
        return this.f5117b;
    }

    public final float getThumbPosition() {
        return this.f5101I;
    }

    public int getThumbTextPadding() {
        return this.f5129t;
    }

    public ColorStateList getThumbTintList() {
        return this.f5120e;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f5121f;
    }

    public Drawable getTrackDrawable() {
        return this.f5124n;
    }

    public ColorStateList getTrackTintList() {
        return this.f5125p;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f5126q;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f5117b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f5124n;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f5115W;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f5115W.end();
        this.f5115W = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f5092e0);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.f5124n;
        Rect rect = this.f5119c0;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f5106N;
        int i7 = this.f5108P;
        int i8 = i2 + rect.top;
        int i9 = i7 - rect.bottom;
        Drawable drawable2 = this.f5117b;
        if (drawable != null) {
            if (!this.f5132w || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect opticalBounds = P0.getOpticalBounds(drawable2);
                drawable2.copyBounds(rect);
                rect.left += opticalBounds.left;
                rect.right -= opticalBounds.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = getTargetCheckedState() ? this.f5112T : this.f5113U;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f5111S;
            TextPaint textPaint = this.f5110R;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i8 + i9) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f5133x : this.f5135z;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(TokenParser.SP);
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        int i10;
        int width;
        int i11;
        int i12;
        int i13;
        super.onLayout(z6, i2, i7, i8, i9);
        int i14 = 0;
        if (this.f5117b != null) {
            Drawable drawable = this.f5124n;
            Rect rect = this.f5119c0;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect opticalBounds = P0.getOpticalBounds(this.f5117b);
            i10 = Math.max(0, opticalBounds.left - rect.left);
            i14 = Math.max(0, opticalBounds.right - rect.right);
        } else {
            i10 = 0;
        }
        if (z2.isLayoutRtl(this)) {
            i11 = getPaddingLeft() + i10;
            width = ((this.f5102J + i11) - i10) - i14;
        } else {
            width = (getWidth() - getPaddingRight()) - i14;
            i11 = (width - this.f5102J) + i10 + i14;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i15 = this.f5103K;
            int i16 = height - (i15 / 2);
            i12 = i15 + i16;
            i13 = i16;
        } else if (gravity != 80) {
            i13 = getPaddingTop();
            i12 = this.f5103K + i13;
        } else {
            i12 = getHeight() - getPaddingBottom();
            i13 = i12 - this.f5103K;
        }
        this.f5105M = i11;
        this.f5106N = i13;
        this.f5108P = i12;
        this.f5107O = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i7) {
        int i8;
        int i9;
        int i10 = 0;
        if (this.f5094B) {
            StaticLayout staticLayout = this.f5112T;
            TextPaint textPaint = this.f5110R;
            if (staticLayout == null) {
                CharSequence charSequence = this.f5134y;
                this.f5112T = new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            if (this.f5113U == null) {
                CharSequence charSequence2 = this.f5093A;
                this.f5113U = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }
        Drawable drawable = this.f5117b;
        Rect rect = this.f5119c0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i8 = (this.f5117b.getIntrinsicWidth() - rect.left) - rect.right;
            i9 = this.f5117b.getIntrinsicHeight();
        } else {
            i8 = 0;
            i9 = 0;
        }
        this.f5104L = Math.max(this.f5094B ? (this.f5129t * 2) + Math.max(this.f5112T.getWidth(), this.f5113U.getWidth()) : 0, i8);
        Drawable drawable2 = this.f5124n;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i10 = this.f5124n.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i11 = rect.left;
        int i12 = rect.right;
        Drawable drawable3 = this.f5117b;
        if (drawable3 != null) {
            Rect opticalBounds = P0.getOpticalBounds(drawable3);
            i11 = Math.max(i11, opticalBounds.left);
            i12 = Math.max(i12, opticalBounds.right);
        }
        int max = this.f5109Q ? Math.max(this.f5130u, (this.f5104L * 2) + i11 + i12) : this.f5130u;
        int max2 = Math.max(i10, i9);
        this.f5102J = max;
        this.f5103K = max2;
        super.onMeasure(i2, i7);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f5133x : this.f5135z;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0015, code lost:
    
        if (r1 != 3) goto L82;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z6) {
        super.setAllCaps(z6);
        getEmojiTextViewHelper().b(z6);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z6) {
        super.setChecked(z6);
        boolean isChecked = isChecked();
        if (isChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                CharSequence charSequence = this.f5133x;
                if (charSequence == null) {
                    charSequence = getResources().getString(androidx.appcompat.R.string.abc_capital_on);
                }
                AbstractC0181p0.setStateDescription(this, charSequence);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence2 = this.f5135z;
            if (charSequence2 == null) {
                charSequence2 = getResources().getString(androidx.appcompat.R.string.abc_capital_off);
            }
            AbstractC0181p0.setStateDescription(this, charSequence2);
        }
        if (getWindowToken() == null || !AbstractC0181p0.isLaidOut(this)) {
            ObjectAnimator objectAnimator = this.f5115W;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            setThumbPosition(isChecked ? 1.0f : 0.0f);
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f5091d0, isChecked ? 1.0f : 0.0f);
        this.f5115W = ofFloat;
        ofFloat.setDuration(250L);
        Y1.a(this.f5115W, true);
        this.f5115W.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(A.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z6) {
        getEmojiTextViewHelper().c(z6);
        setTextOnInternal(this.f5133x);
        setTextOffInternal(this.f5135z);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z6) {
        this.f5109Q = z6;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().f17739b.getFilters(inputFilterArr));
    }

    public void setShowText(boolean z6) {
        if (this.f5094B != z6) {
            this.f5094B = z6;
            requestLayout();
            if (z6) {
                d();
            }
        }
    }

    public void setSplitTrack(boolean z6) {
        this.f5132w = z6;
        invalidate();
    }

    public void setSwitchMinWidth(int i2) {
        this.f5130u = i2;
        requestLayout();
    }

    public void setSwitchPadding(int i2) {
        this.f5131v = i2;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i2) {
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, i2, androidx.appcompat.R.styleable.TextAppearance);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(androidx.appcompat.R.styleable.TextAppearance_android_textColor);
        if (colorStateList != null) {
            this.f5111S = colorStateList;
        } else {
            this.f5111S = getTextColors();
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.TextAppearance_android_textSize, 0);
        if (dimensionPixelSize != 0) {
            float f3 = dimensionPixelSize;
            TextPaint textPaint = this.f5110R;
            if (f3 != textPaint.getTextSize()) {
                textPaint.setTextSize(f3);
                requestLayout();
            }
        }
        int i7 = obtainStyledAttributes.getInt(androidx.appcompat.R.styleable.TextAppearance_android_typeface, -1);
        setSwitchTypeface(i7 != 1 ? i7 != 2 ? i7 != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, obtainStyledAttributes.getInt(androidx.appcompat.R.styleable.TextAppearance_android_textStyle, -1));
        if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.TextAppearance_textAllCaps, false)) {
            this.f5114V = new C1001a(getContext());
        } else {
            this.f5114V = null;
        }
        setTextOnInternal(this.f5133x);
        setTextOffInternal(this.f5135z);
        obtainStyledAttributes.recycle();
    }

    public void setSwitchTypeface(Typeface typeface, int i2) {
        TextPaint textPaint = this.f5110R;
        if (i2 <= 0) {
            textPaint.setFakeBoldText(false);
            textPaint.setTextSkewX(0.0f);
            setSwitchTypeface(typeface);
        } else {
            Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i2) : Typeface.create(typeface, i2);
            setSwitchTypeface(defaultFromStyle);
            int i7 = (~(defaultFromStyle != null ? defaultFromStyle.getStyle() : 0)) & i2;
            textPaint.setFakeBoldText((i7 & 1) != 0);
            textPaint.setTextSkewX((i7 & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        CharSequence charSequence2 = this.f5135z;
        if (charSequence2 == null) {
            charSequence2 = getResources().getString(androidx.appcompat.R.string.abc_capital_off);
        }
        AbstractC0181p0.setStateDescription(this, charSequence2);
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (!isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        CharSequence charSequence2 = this.f5133x;
        if (charSequence2 == null) {
            charSequence2 = getResources().getString(androidx.appcompat.R.string.abc_capital_on);
        }
        AbstractC0181p0.setStateDescription(this, charSequence2);
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f5117b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f5117b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f3) {
        this.f5101I = f3;
        invalidate();
    }

    public void setThumbResource(int i2) {
        setThumbDrawable(AbstractC0876a.getDrawable(getContext(), i2));
    }

    public void setThumbTextPadding(int i2) {
        this.f5129t = i2;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f5120e = colorStateList;
        this.f5122j = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f5121f = mode;
        this.f5123m = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f5124n;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f5124n = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i2) {
        setTrackDrawable(AbstractC0876a.getDrawable(getContext(), i2));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f5125p = colorStateList;
        this.f5127r = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f5126q = mode;
        this.f5128s = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f5117b || drawable == this.f5124n;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5120e = null;
        this.f5121f = null;
        this.f5122j = false;
        this.f5123m = false;
        this.f5125p = null;
        this.f5126q = null;
        this.f5127r = false;
        this.f5128s = false;
        this.f5099G = VelocityTracker.obtain();
        this.f5109Q = true;
        this.f5119c0 = new Rect();
        a2.checkAppCompatTheme(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.f5110R = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, attributeSet, androidx.appcompat.R.styleable.SwitchCompat, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, androidx.appcompat.R.styleable.SwitchCompat, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SwitchCompat_android_thumb);
        this.f5117b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SwitchCompat_track);
        this.f5124n = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        setTextOnInternal(obtainStyledAttributes.getText(androidx.appcompat.R.styleable.SwitchCompat_android_textOn));
        setTextOffInternal(obtainStyledAttributes.getText(androidx.appcompat.R.styleable.SwitchCompat_android_textOff));
        this.f5094B = obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.SwitchCompat_showText, true);
        this.f5129t = obtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.f5130u = obtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.SwitchCompat_switchMinWidth, 0);
        this.f5131v = obtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.SwitchCompat_switchPadding, 0);
        this.f5132w = obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.SwitchCompat_splitTrack, false);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(androidx.appcompat.R.styleable.SwitchCompat_thumbTint);
        if (colorStateList != null) {
            this.f5120e = colorStateList;
            this.f5122j = true;
        }
        PorterDuff.Mode parseTintMode = P0.parseTintMode(obtainStyledAttributes.getInt(androidx.appcompat.R.styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.f5121f != parseTintMode) {
            this.f5121f = parseTintMode;
            this.f5123m = true;
        }
        if (this.f5122j || this.f5123m) {
            a();
        }
        ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(androidx.appcompat.R.styleable.SwitchCompat_trackTint);
        if (colorStateList2 != null) {
            this.f5125p = colorStateList2;
            this.f5127r = true;
        }
        PorterDuff.Mode parseTintMode2 = P0.parseTintMode(obtainStyledAttributes.getInt(androidx.appcompat.R.styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.f5126q != parseTintMode2) {
            this.f5126q = parseTintMode2;
            this.f5128s = true;
        }
        if (this.f5127r || this.f5128s) {
            b();
        }
        int resourceId = obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (resourceId != 0) {
            setSwitchTextAppearance(context, resourceId);
        }
        new C1199y0(this).f(attributeSet, i2);
        obtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f5096D = viewConfiguration.getScaledTouchSlop();
        this.f5100H = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().a(attributeSet, i2);
        refreshDrawableState();
        setChecked(isChecked());
    }

    public void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.f5110R;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }
}
