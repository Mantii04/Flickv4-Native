package com.google.android.material.timepicker;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class i extends ConstraintLayout {

    /* renamed from: D, reason: collision with root package name */
    public final h f12980D;

    /* renamed from: E, reason: collision with root package name */
    public int f12981E;

    /* renamed from: F, reason: collision with root package name */
    public final G3.j f12982F;

    /* JADX WARN: Type inference failed for: r5v3, types: [com.google.android.material.timepicker.h] */
    public i(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        G3.j jVar = new G3.j();
        this.f12982F = jVar;
        jVar.setCornerSize(new G3.l(0.5f));
        this.f12982F.setFillColor(ColorStateList.valueOf(-1));
        AbstractC0181p0.setBackground(this, this.f12982F);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadialViewGroup, i2, 0);
        this.f12981E = obtainStyledAttributes.getDimensionPixelSize(R.styleable.RadialViewGroup_materialCircleRadius, 0);
        this.f12980D = new Runnable() { // from class: com.google.android.material.timepicker.h
            @Override // java.lang.Runnable
            public final void run() {
                i.this.updateLayoutParams();
            }
        };
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (view.getId() == -1) {
            view.setId(AbstractC0181p0.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            h hVar = this.f12980D;
            handler.removeCallbacks(hVar);
            handler.post(hVar);
        }
    }

    public int getRadius() {
        return this.f12981E;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        updateLayoutParams();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            h hVar = this.f12980D;
            handler.removeCallbacks(hVar);
            handler.post(hVar);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        this.f12982F.setFillColor(ColorStateList.valueOf(i2));
    }

    public void setRadius(int i2) {
        this.f12981E = i2;
        updateLayoutParams();
    }

    public void updateLayoutParams() {
        androidx.constraintlayout.widget.l lVar = new androidx.constraintlayout.widget.l();
        lVar.clone(this);
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getId() != R.id.circle_center && !"skip".equals(childAt.getTag())) {
                int i7 = (Integer) childAt.getTag(R.id.material_clock_level);
                if (i7 == null) {
                    i7 = 1;
                }
                if (!hashMap.containsKey(i7)) {
                    hashMap.put(i7, new ArrayList());
                }
                ((List) hashMap.get(i7)).add(childAt);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            List list = (List) entry.getValue();
            int round = ((Integer) entry.getKey()).intValue() == 2 ? Math.round(this.f12981E * 0.66f) : this.f12981E;
            Iterator it = list.iterator();
            float f3 = 0.0f;
            while (it.hasNext()) {
                lVar.constrainCircle(((View) it.next()).getId(), R.id.circle_center, round, f3);
                f3 += 360.0f / list.size();
            }
        }
        lVar.applyTo(this);
    }
}
