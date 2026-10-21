package K3;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import java.util.List;
import l.C1119A;
import l.C1162l1;
import x3.AbstractC1836j;
import x3.L;

/* loaded from: classes2.dex */
public final class x extends C1119A {

    /* renamed from: m, reason: collision with root package name */
    public final C1162l1 f1766m;

    /* renamed from: n, reason: collision with root package name */
    public final AccessibilityManager f1767n;

    /* renamed from: p, reason: collision with root package name */
    public final Rect f1768p;

    /* renamed from: q, reason: collision with root package name */
    public final int f1769q;

    /* renamed from: r, reason: collision with root package name */
    public final float f1770r;

    /* renamed from: s, reason: collision with root package name */
    public ColorStateList f1771s;

    /* renamed from: t, reason: collision with root package name */
    public int f1772t;

    /* renamed from: u, reason: collision with root package name */
    public ColorStateList f1773u;

    public x(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
    }

    public static void a(x xVar, Object obj) {
        xVar.setText(xVar.convertSelectionToString(obj), false);
    }

    public final TextInputLayout b() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    public final boolean c() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.f1767n;
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            return true;
        }
        if (accessibilityManager == null || !accessibilityManager.isEnabled() || (enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(16)) == null) {
            return false;
        }
        for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
            if (accessibilityServiceInfo.getSettingsActivityName() != null && accessibilityServiceInfo.getSettingsActivityName().contains("SwitchAccess")) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.AutoCompleteTextView
    public void dismissDropDown() {
        if (c()) {
            this.f1766m.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    public ColorStateList getDropDownBackgroundTintList() {
        return this.f1771s;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout b7 = b();
        return (b7 == null || !b7.isProvidingHint()) ? super.getHint() : b7.getHint();
    }

    public float getPopupElevation() {
        return this.f1770r;
    }

    public int getSimpleItemSelectedColor() {
        return this.f1772t;
    }

    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.f1773u;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout b7 = b();
        if (b7 != null && b7.isProvidingHint() && super.getHint() == null && AbstractC1836j.isMeizuDevice()) {
            setHint("");
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1766m.dismiss();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout b7 = b();
            int i8 = 0;
            if (adapter != null && b7 != null) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                C1162l1 c1162l1 = this.f1766m;
                int min = Math.min(adapter.getCount(), Math.max(0, c1162l1.getSelectedItemPosition()) + 15);
                View view = null;
                int i9 = 0;
                for (int max = Math.max(0, min - 15); max < min; max++) {
                    int itemViewType = adapter.getItemViewType(max);
                    if (itemViewType != i8) {
                        view = null;
                        i8 = itemViewType;
                    }
                    view = adapter.getView(max, view, b7);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(makeMeasureSpec, makeMeasureSpec2);
                    i9 = Math.max(i9, view.getMeasuredWidth());
                }
                Drawable background = c1162l1.getBackground();
                if (background != null) {
                    Rect rect = this.f1768p;
                    background.getPadding(rect);
                    i9 += rect.left + rect.right;
                }
                i8 = b7.getEndIconView().getMeasuredWidth() + i9;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, i8), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z6) {
        if (c()) {
            return;
        }
        super.onWindowFocusChanged(z6);
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t6) {
        super.setAdapter(t6);
        this.f1766m.setAdapter(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        C1162l1 c1162l1 = this.f1766m;
        if (c1162l1 != null) {
            c1162l1.setBackgroundDrawable(drawable);
        }
    }

    public void setDropDownBackgroundTint(int i2) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i2));
    }

    public void setDropDownBackgroundTintList(ColorStateList colorStateList) {
        this.f1771s = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof G3.j) {
            ((G3.j) dropDownBackground).setFillColor(this.f1771s);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.f1766m.setOnItemSelectedListener(getOnItemSelectedListener());
    }

    @Override // android.widget.TextView
    public void setRawInputType(int i2) {
        super.setRawInputType(i2);
        TextInputLayout b7 = b();
        if (b7 != null) {
            b7.s();
        }
    }

    public void setSimpleItemSelectedColor(int i2) {
        this.f1772t = i2;
        if (getAdapter() instanceof w) {
            ((w) getAdapter()).a();
        }
    }

    public void setSimpleItemSelectedRippleColor(ColorStateList colorStateList) {
        this.f1773u = colorStateList;
        if (getAdapter() instanceof w) {
            ((w) getAdapter()).a();
        }
    }

    public void setSimpleItems(int i2) {
        setSimpleItems(getResources().getStringArray(i2));
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        if (c()) {
            this.f1766m.show();
        } else {
            super.showDropDown();
        }
    }

    public x(Context context, AttributeSet attributeSet, int i2) {
        super(M3.a.wrap(context, attributeSet, i2, 0), attributeSet, i2);
        this.f1768p = new Rect();
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = L.obtainStyledAttributes(context2, attributeSet, R.styleable.MaterialAutoCompleteTextView, i2, R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (obtainStyledAttributes.hasValue(R.styleable.MaterialAutoCompleteTextView_android_inputType) && obtainStyledAttributes.getInt(R.styleable.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.f1769q = obtainStyledAttributes.getResourceId(R.styleable.MaterialAutoCompleteTextView_simpleItemLayout, R.layout.mtrl_auto_complete_simple_item);
        this.f1770r = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialAutoCompleteTextView_android_popupElevation, R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        if (obtainStyledAttributes.hasValue(R.styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint)) {
            this.f1771s = ColorStateList.valueOf(obtainStyledAttributes.getColor(R.styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint, 0));
        }
        this.f1772t = obtainStyledAttributes.getColor(R.styleable.MaterialAutoCompleteTextView_simpleItemSelectedColor, 0);
        this.f1773u = C3.d.getColorStateList(context2, obtainStyledAttributes, R.styleable.MaterialAutoCompleteTextView_simpleItemSelectedRippleColor);
        this.f1767n = (AccessibilityManager) context2.getSystemService("accessibility");
        C1162l1 c1162l1 = new C1162l1(context2);
        this.f1766m = c1162l1;
        c1162l1.setModal(true);
        c1162l1.setAnchorView(this);
        c1162l1.setInputMethodMode(2);
        c1162l1.setAdapter(getAdapter());
        c1162l1.setOnItemClickListener(new v(this));
        if (obtainStyledAttributes.hasValue(R.styleable.MaterialAutoCompleteTextView_simpleItems)) {
            setSimpleItems(obtainStyledAttributes.getResourceId(R.styleable.MaterialAutoCompleteTextView_simpleItems, 0));
        }
        obtainStyledAttributes.recycle();
    }

    public void setSimpleItems(String[] strArr) {
        setAdapter(new w(this, getContext(), this.f1769q, strArr));
    }
}
