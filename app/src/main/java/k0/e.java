package k0;

import M.AbstractC0181p0;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.leanback.R;
import androidx.leanback.widget.VerticalGridView;
import cz.msebera.android.httpclient.HttpStatus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class e extends FrameLayout {

    /* renamed from: b, reason: collision with root package name */
    public final ViewGroup f17226b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f17227e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f17228f;

    /* renamed from: j, reason: collision with root package name */
    public final float f17229j;

    /* renamed from: m, reason: collision with root package name */
    public final float f17230m;

    /* renamed from: n, reason: collision with root package name */
    public final float f17231n;

    /* renamed from: p, reason: collision with root package name */
    public final int f17232p;

    /* renamed from: q, reason: collision with root package name */
    public final DecelerateInterpolator f17233q;

    /* renamed from: r, reason: collision with root package name */
    public float f17234r;

    /* renamed from: s, reason: collision with root package name */
    public float f17235s;

    /* renamed from: t, reason: collision with root package name */
    public int f17236t;

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f17237u;

    /* renamed from: v, reason: collision with root package name */
    public int f17238v;

    /* renamed from: w, reason: collision with root package name */
    public int f17239w;

    /* renamed from: x, reason: collision with root package name */
    public final C1087b f17240x;

    @SuppressLint({"CustomViewStyleable"})
    public e(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17227e = new ArrayList();
        this.f17234r = 3.0f;
        this.f17235s = 1.0f;
        this.f17236t = 0;
        this.f17237u = new ArrayList();
        this.f17240x = new C1087b(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.lbPicker, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, R.styleable.lbPicker, attributeSet, obtainStyledAttributes, i2, 0);
        this.f17238v = obtainStyledAttributes.getResourceId(R.styleable.lbPicker_pickerItemLayout, R.layout.lb_picker_item);
        this.f17239w = obtainStyledAttributes.getResourceId(R.styleable.lbPicker_pickerItemTextViewId, 0);
        obtainStyledAttributes.recycle();
        setEnabled(true);
        setDescendantFocusability(262144);
        this.f17230m = 1.0f;
        this.f17229j = 1.0f;
        this.f17231n = 0.5f;
        this.f17232p = HttpStatus.SC_OK;
        this.f17233q = new DecelerateInterpolator(2.5f);
        this.f17226b = (ViewGroup) ((ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.lb_picker, (ViewGroup) this, true)).findViewById(R.id.picker);
    }

    public final void a(View view, boolean z6, float f3, DecelerateInterpolator decelerateInterpolator) {
        view.animate().cancel();
        if (z6) {
            view.animate().alpha(f3).setDuration(this.f17232p).setInterpolator(decelerateInterpolator).start();
        } else {
            view.setAlpha(f3);
        }
    }

    public final void b(View view, boolean z6, int i2, boolean z7) {
        boolean z8 = i2 == this.f17236t || !hasFocus();
        DecelerateInterpolator decelerateInterpolator = this.f17233q;
        if (z6) {
            if (z8) {
                a(view, z7, this.f17230m, decelerateInterpolator);
                return;
            } else {
                a(view, z7, this.f17229j, decelerateInterpolator);
                return;
            }
        }
        if (z8) {
            a(view, z7, this.f17231n, decelerateInterpolator);
        } else {
            a(view, z7, 0.0f, decelerateInterpolator);
        }
    }

    public final void c(int i2) {
        VerticalGridView verticalGridView = (VerticalGridView) this.f17227e.get(i2);
        int selectedPosition = verticalGridView.getSelectedPosition();
        int i7 = 0;
        while (i7 < verticalGridView.getAdapter().getItemCount()) {
            View findViewByPosition = verticalGridView.getLayoutManager().findViewByPosition(i7);
            if (findViewByPosition != null) {
                b(findViewByPosition, selectedPosition == i7, i2, true);
            }
            i7++;
        }
    }

    public final void d() {
        for (int i2 = 0; i2 < getColumnsCount(); i2++) {
            e((VerticalGridView) this.f17227e.get(i2));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!isActivated()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 23 && keyCode != 66) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getAction() == 1) {
            performClick();
        }
        return true;
    }

    public final void e(VerticalGridView verticalGridView) {
        ViewGroup.LayoutParams layoutParams = verticalGridView.getLayoutParams();
        float activatedVisibleItemCount = isActivated() ? getActivatedVisibleItemCount() : getVisibleItemCount();
        layoutParams.height = (int) b.c.a(activatedVisibleItemCount, 1.0f, verticalGridView.getVerticalSpacing(), getPickerItemHeightPixels() * activatedVisibleItemCount);
        verticalGridView.setLayoutParams(layoutParams);
    }

    public float getActivatedVisibleItemCount() {
        return this.f17234r;
    }

    public f getColumnAt(int i2) {
        ArrayList arrayList = this.f17228f;
        if (arrayList == null) {
            return null;
        }
        return (f) arrayList.get(i2);
    }

    public int getColumnsCount() {
        ArrayList arrayList = this.f17228f;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public int getPickerItemHeightPixels() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.picker_item_height);
    }

    public final int getPickerItemLayoutId() {
        return this.f17238v;
    }

    public final int getPickerItemTextViewId() {
        return this.f17239w;
    }

    public int getSelectedColumn() {
        return this.f17236t;
    }

    @Deprecated
    public final CharSequence getSeparator() {
        return (CharSequence) this.f17237u.get(0);
    }

    public final List<CharSequence> getSeparators() {
        return this.f17237u;
    }

    public float getVisibleItemCount() {
        return 1.0f;
    }

    public abstract void onColumnValueChanged(int i2, int i7);

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int selectedColumn = getSelectedColumn();
        if (selectedColumn < 0) {
            return false;
        }
        ArrayList arrayList = this.f17227e;
        if (selectedColumn < arrayList.size()) {
            return ((VerticalGridView) arrayList.get(selectedColumn)).requestFocus(i2, rect);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f17227e;
            if (i2 >= arrayList.size()) {
                return;
            }
            if (((VerticalGridView) arrayList.get(i2)).hasFocus()) {
                setSelectedColumn(i2);
            }
            i2++;
        }
    }

    @Override // android.view.View
    public void setActivated(boolean z6) {
        ArrayList arrayList;
        if (z6 == isActivated()) {
            super.setActivated(z6);
            return;
        }
        super.setActivated(z6);
        boolean hasFocus = hasFocus();
        int selectedColumn = getSelectedColumn();
        setDescendantFocusability(131072);
        if (!z6 && hasFocus && isFocusable()) {
            requestFocus();
        }
        int i2 = 0;
        while (true) {
            int columnsCount = getColumnsCount();
            arrayList = this.f17227e;
            if (i2 >= columnsCount) {
                break;
            }
            ((VerticalGridView) arrayList.get(i2)).setFocusable(z6);
            i2++;
        }
        d();
        boolean isActivated = isActivated();
        for (int i7 = 0; i7 < getColumnsCount(); i7++) {
            VerticalGridView verticalGridView = (VerticalGridView) arrayList.get(i7);
            for (int i8 = 0; i8 < verticalGridView.getChildCount(); i8++) {
                verticalGridView.getChildAt(i8).setFocusable(isActivated);
            }
        }
        if (z6 && hasFocus && selectedColumn >= 0) {
            ((VerticalGridView) arrayList.get(selectedColumn)).requestFocus();
        }
        setDescendantFocusability(262144);
    }

    public void setActivatedVisibleItemCount(float f3) {
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (this.f17234r != f3) {
            this.f17234r = f3;
            if (isActivated()) {
                d();
            }
        }
    }

    public void setColumnAt(int i2, f fVar) {
        this.f17228f.set(i2, fVar);
        VerticalGridView verticalGridView = (VerticalGridView) this.f17227e.get(i2);
        C1088c c1088c = (C1088c) verticalGridView.getAdapter();
        if (c1088c != null) {
            c1088c.notifyDataSetChanged();
        }
        verticalGridView.setSelectedPosition(fVar.getCurrentValue() - fVar.getMinValue());
    }

    public void setColumnValue(int i2, int i7, boolean z6) {
        f fVar = (f) this.f17228f.get(i2);
        if (fVar.getCurrentValue() != i7) {
            fVar.setCurrentValue(i7);
            VerticalGridView verticalGridView = (VerticalGridView) this.f17227e.get(i2);
            if (verticalGridView != null) {
                int minValue = i7 - ((f) this.f17228f.get(i2)).getMinValue();
                if (z6) {
                    verticalGridView.setSelectedPositionSmooth(minValue);
                } else {
                    verticalGridView.setSelectedPosition(minValue);
                }
            }
        }
    }

    public void setColumns(List<f> list) {
        ArrayList arrayList = this.f17237u;
        if (arrayList.size() == 0) {
            throw new IllegalStateException("Separators size is: " + arrayList.size() + ". At least one separator must be provided");
        }
        if (arrayList.size() == 1) {
            CharSequence charSequence = (CharSequence) arrayList.get(0);
            arrayList.clear();
            arrayList.add("");
            for (int i2 = 0; i2 < list.size() - 1; i2++) {
                arrayList.add(charSequence);
            }
            arrayList.add("");
        } else if (arrayList.size() != list.size() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " mustequal the size of columns: " + list.size() + " + 1");
        }
        ArrayList arrayList2 = this.f17227e;
        arrayList2.clear();
        ViewGroup viewGroup = this.f17226b;
        viewGroup.removeAllViews();
        ArrayList arrayList3 = new ArrayList(list);
        this.f17228f = arrayList3;
        if (this.f17236t > arrayList3.size() - 1) {
            this.f17236t = this.f17228f.size() - 1;
        }
        LayoutInflater from = LayoutInflater.from(getContext());
        int columnsCount = getColumnsCount();
        if (!TextUtils.isEmpty((CharSequence) arrayList.get(0))) {
            TextView textView = (TextView) from.inflate(R.layout.lb_picker_separator, viewGroup, false);
            textView.setText((CharSequence) arrayList.get(0));
            viewGroup.addView(textView);
        }
        int i7 = 0;
        while (i7 < columnsCount) {
            VerticalGridView verticalGridView = (VerticalGridView) from.inflate(R.layout.lb_picker_column, viewGroup, false);
            e(verticalGridView);
            verticalGridView.setWindowAlignment(0);
            verticalGridView.setHasFixedSize(false);
            verticalGridView.setFocusable(isActivated());
            verticalGridView.setItemViewCacheSize(0);
            arrayList2.add(verticalGridView);
            viewGroup.addView(verticalGridView);
            int i8 = i7 + 1;
            if (!TextUtils.isEmpty((CharSequence) arrayList.get(i8))) {
                TextView textView2 = (TextView) from.inflate(R.layout.lb_picker_separator, viewGroup, false);
                textView2.setText((CharSequence) arrayList.get(i8));
                viewGroup.addView(textView2);
            }
            verticalGridView.setAdapter(new C1088c(this, getPickerItemLayoutId(), getPickerItemTextViewId(), i7));
            verticalGridView.setOnChildViewHolderSelectedListener(this.f17240x);
            i7 = i8;
        }
    }

    public final void setPickerItemLayoutId(int i2) {
        this.f17238v = i2;
    }

    public final void setPickerItemTextViewId(int i2) {
        this.f17239w = i2;
    }

    public void setSelectedColumn(int i2) {
        int i7 = this.f17236t;
        ArrayList arrayList = this.f17227e;
        if (i7 != i2) {
            this.f17236t = i2;
            for (int i8 = 0; i8 < arrayList.size(); i8++) {
                c(i8);
            }
        }
        VerticalGridView verticalGridView = (VerticalGridView) arrayList.get(i2);
        if (!hasFocus() || verticalGridView.hasFocus()) {
            return;
        }
        verticalGridView.requestFocus();
    }

    public final void setSeparator(CharSequence charSequence) {
        setSeparators(Arrays.asList(charSequence));
    }

    public final void setSeparators(List<CharSequence> list) {
        ArrayList arrayList = this.f17237u;
        arrayList.clear();
        arrayList.addAll(list);
    }

    public void setVisibleItemCount(float f3) {
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (this.f17235s != f3) {
            this.f17235s = f3;
            if (isActivated()) {
                return;
            }
            d();
        }
    }
}
