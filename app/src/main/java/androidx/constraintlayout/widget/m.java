package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;

/* loaded from: classes.dex */
public abstract class m extends c {

    /* renamed from: q, reason: collision with root package name */
    public boolean f5509q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f5510r;

    public m(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.constraintlayout.widget.c
    public void applyLayoutFeaturesInConstraintSet(ConstraintLayout constraintLayout) {
        applyLayoutFeatures(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.c
    public void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f5509q = true;
                } else if (index == R.styleable.ConstraintLayout_Layout_android_elevation) {
                    this.f5510r = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.c, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f5509q || this.f5510r) {
            ViewParent parent = getParent();
            if (parent instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) parent;
                int visibility = getVisibility();
                float elevation = getElevation();
                for (int i2 = 0; i2 < this.f5324e; i2++) {
                    View viewById = constraintLayout.getViewById(this.f5323b[i2]);
                    if (viewById != null) {
                        if (this.f5509q) {
                            viewById.setVisibility(visibility);
                        }
                        if (this.f5510r && elevation > 0.0f) {
                            viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                        }
                    }
                }
            }
        }
    }

    public abstract void onMeasure(u.m mVar, int i2, int i7);

    @Override // android.view.View
    public void setElevation(float f3) {
        super.setElevation(f3);
        applyLayoutFeatures();
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        applyLayoutFeatures();
    }
}
