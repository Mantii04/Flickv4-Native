package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.R;
import androidx.appcompat.widget.AppCompatTextView;
import k.AbstractC1071c;
import k.C1070b;
import k.InterfaceC1061F;
import k.InterfaceC1083o;
import k.s;
import l.InterfaceC1189v;
import l.t2;

/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements InterfaceC1061F, View.OnClickListener, InterfaceC1189v {

    /* renamed from: A, reason: collision with root package name */
    public final int f4936A;

    /* renamed from: q, reason: collision with root package name */
    public s f4937q;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f4938r;

    /* renamed from: s, reason: collision with root package name */
    public Drawable f4939s;

    /* renamed from: t, reason: collision with root package name */
    public InterfaceC1083o f4940t;

    /* renamed from: u, reason: collision with root package name */
    public C1070b f4941u;

    /* renamed from: v, reason: collision with root package name */
    public AbstractC1071c f4942v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f4943w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f4944x;

    /* renamed from: y, reason: collision with root package name */
    public final int f4945y;

    /* renamed from: z, reason: collision with root package name */
    public int f4946z;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // k.InterfaceC1061F
    public s getItemData() {
        return this.f4937q;
    }

    public boolean hasText() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // k.InterfaceC1061F
    public void initialize(s sVar, int i2) {
        this.f4937q = sVar;
        setIcon(sVar.getIcon());
        setTitle(prefersCondensedTitle() ? sVar.getTitleCondensed() : sVar.getTitle());
        setId(sVar.getItemId());
        setVisibility(sVar.isVisible() ? 0 : 8);
        setEnabled(sVar.isEnabled());
        if (sVar.hasSubMenu() && this.f4941u == null) {
            this.f4941u = new C1070b(this);
        }
    }

    public final boolean n() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i7 = configuration.screenHeightDp;
        if (i2 < 480) {
            return (i2 >= 640 && i7 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    @Override // l.InterfaceC1189v
    public boolean needsDividerAfter() {
        return hasText();
    }

    @Override // l.InterfaceC1189v
    public boolean needsDividerBefore() {
        return hasText() && this.f4937q.getIcon() == null;
    }

    public final void o() {
        boolean z6 = true;
        boolean z7 = !TextUtils.isEmpty(this.f4938r);
        if (this.f4939s != null && (!this.f4937q.showsTextAsAction() || (!this.f4943w && !this.f4944x))) {
            z6 = false;
        }
        boolean z8 = z7 & z6;
        setText(z8 ? this.f4938r : null);
        CharSequence contentDescription = this.f4937q.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z8 ? null : this.f4937q.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f4937q.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            t2.setTooltipText(this, z8 ? null : this.f4937q.getTitle());
        } else {
            t2.setTooltipText(this, tooltipText);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        InterfaceC1083o interfaceC1083o = this.f4940t;
        if (interfaceC1083o != null) {
            interfaceC1083o.invokeItem(this.f4937q);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f4943w = n();
        o();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i7) {
        int i8;
        boolean hasText = hasText();
        if (hasText && (i8 = this.f4946z) >= 0) {
            super.setPadding(i8, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i2, i7);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int i9 = this.f4945y;
        int min = mode == Integer.MIN_VALUE ? Math.min(size, i9) : i9;
        if (mode != 1073741824 && i9 > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i7);
        }
        if (hasText || this.f4939s == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f4939s.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C1070b c1070b;
        if (this.f4937q.hasSubMenu() && (c1070b = this.f4941u) != null && c1070b.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // k.InterfaceC1061F
    public boolean prefersCondensedTitle() {
        return true;
    }

    public void setCheckable(boolean z6) {
    }

    public void setChecked(boolean z6) {
    }

    public void setExpandedFormat(boolean z6) {
        if (this.f4944x != z6) {
            this.f4944x = z6;
            s sVar = this.f4937q;
            if (sVar != null) {
                sVar.actionFormatChanged();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f4939s = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i2 = this.f4936A;
            if (intrinsicWidth > i2) {
                intrinsicHeight = (int) (intrinsicHeight * (i2 / intrinsicWidth));
                intrinsicWidth = i2;
            }
            if (intrinsicHeight > i2) {
                intrinsicWidth = (int) (intrinsicWidth * (i2 / intrinsicHeight));
            } else {
                i2 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i2);
        }
        setCompoundDrawables(drawable, null, null, null);
        o();
    }

    public void setItemInvoker(InterfaceC1083o interfaceC1083o) {
        this.f4940t = interfaceC1083o;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i2, int i7, int i8, int i9) {
        this.f4946z = i2;
        super.setPadding(i2, i7, i8, i9);
    }

    public void setPopupCallback(AbstractC1071c abstractC1071c) {
        this.f4942v = abstractC1071c;
    }

    public void setTitle(CharSequence charSequence) {
        this.f4938r = charSequence;
        o();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Resources resources = context.getResources();
        this.f4943w = n();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMenuItemView, i2, 0);
        this.f4945y = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.f4936A = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f4946z = -1;
        setSaveEnabled(false);
    }
}
