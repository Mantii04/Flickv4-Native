package androidx.constraintlayout.helper.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.m;
import u.e;
import u.h;

/* loaded from: classes.dex */
public class Flow extends m {

    /* renamed from: s, reason: collision with root package name */
    public h f5282s;

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.constraintlayout.widget.m, androidx.constraintlayout.widget.c
    public void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        this.f5282s = new h();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_android_orientation) {
                    this.f5282s.setOrientation(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_padding) {
                    this.f5282s.setPadding(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingStart) {
                    this.f5282s.setPaddingStart(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingEnd) {
                    this.f5282s.setPaddingEnd(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingLeft) {
                    this.f5282s.setPaddingLeft(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingTop) {
                    this.f5282s.setPaddingTop(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingRight) {
                    this.f5282s.setPaddingRight(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingBottom) {
                    this.f5282s.setPaddingBottom(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_wrapMode) {
                    this.f5282s.setWrapMode(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.f5282s.setHorizontalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.f5282s.setVerticalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.f5282s.setFirstHorizontalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.f5282s.setLastHorizontalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.f5282s.setFirstVerticalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.f5282s.setLastVerticalStyle(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.f5282s.setHorizontalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.f5282s.setFirstHorizontalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.f5282s.setLastHorizontalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.f5282s.setFirstVerticalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.f5282s.setLastVerticalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalBias) {
                    this.f5282s.setVerticalBias(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.f5282s.setHorizontalAlign(obtainStyledAttributes.getInt(index, 2));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.f5282s.setVerticalAlign(obtainStyledAttributes.getInt(index, 2));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.f5282s.setHorizontalGap(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalGap) {
                    this.f5282s.setVerticalGap(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.f5282s.setMaxElementsWrap(obtainStyledAttributes.getInt(index, -1));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f5326j = this.f5282s;
        validateParams();
    }

    @Override // androidx.constraintlayout.widget.c, android.view.View
    @SuppressLint({"WrongCall"})
    public void onMeasure(int i2, int i7) {
        onMeasure(this.f5282s, i2, i7);
    }

    @Override // androidx.constraintlayout.widget.c
    public void resolveRtl(e eVar, boolean z6) {
        this.f5282s.applyRtl(z6);
    }

    public void setFirstHorizontalBias(float f3) {
        this.f5282s.setFirstHorizontalBias(f3);
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i2) {
        this.f5282s.setFirstHorizontalStyle(i2);
        requestLayout();
    }

    public void setFirstVerticalBias(float f3) {
        this.f5282s.setFirstVerticalBias(f3);
        requestLayout();
    }

    public void setFirstVerticalStyle(int i2) {
        this.f5282s.setFirstVerticalStyle(i2);
        requestLayout();
    }

    public void setHorizontalAlign(int i2) {
        this.f5282s.setHorizontalAlign(i2);
        requestLayout();
    }

    public void setHorizontalBias(float f3) {
        this.f5282s.setHorizontalBias(f3);
        requestLayout();
    }

    public void setHorizontalGap(int i2) {
        this.f5282s.setHorizontalGap(i2);
        requestLayout();
    }

    public void setHorizontalStyle(int i2) {
        this.f5282s.setHorizontalStyle(i2);
        requestLayout();
    }

    public void setLastHorizontalBias(float f3) {
        this.f5282s.setLastHorizontalBias(f3);
        requestLayout();
    }

    public void setLastHorizontalStyle(int i2) {
        this.f5282s.setLastHorizontalStyle(i2);
        requestLayout();
    }

    public void setLastVerticalBias(float f3) {
        this.f5282s.setLastVerticalBias(f3);
        requestLayout();
    }

    public void setLastVerticalStyle(int i2) {
        this.f5282s.setLastVerticalStyle(i2);
        requestLayout();
    }

    public void setMaxElementsWrap(int i2) {
        this.f5282s.setMaxElementsWrap(i2);
        requestLayout();
    }

    public void setOrientation(int i2) {
        this.f5282s.setOrientation(i2);
        requestLayout();
    }

    public void setPadding(int i2) {
        this.f5282s.setPadding(i2);
        requestLayout();
    }

    public void setPaddingBottom(int i2) {
        this.f5282s.setPaddingBottom(i2);
        requestLayout();
    }

    public void setPaddingLeft(int i2) {
        this.f5282s.setPaddingLeft(i2);
        requestLayout();
    }

    public void setPaddingRight(int i2) {
        this.f5282s.setPaddingRight(i2);
        requestLayout();
    }

    public void setPaddingTop(int i2) {
        this.f5282s.setPaddingTop(i2);
        requestLayout();
    }

    public void setVerticalAlign(int i2) {
        this.f5282s.setVerticalAlign(i2);
        requestLayout();
    }

    public void setVerticalBias(float f3) {
        this.f5282s.setVerticalBias(f3);
        requestLayout();
    }

    public void setVerticalGap(int i2) {
        this.f5282s.setVerticalGap(i2);
        requestLayout();
    }

    public void setVerticalStyle(int i2) {
        this.f5282s.setVerticalStyle(i2);
        requestLayout();
    }

    public void setWrapMode(int i2) {
        this.f5282s.setWrapMode(i2);
        requestLayout();
    }

    @Override // androidx.constraintlayout.widget.m
    public void onMeasure(u.m mVar, int i2, int i7) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i7);
        int size2 = View.MeasureSpec.getSize(i7);
        if (mVar == null) {
            setMeasuredDimension(0, 0);
        } else {
            mVar.measure(mode, size, mode2, size2);
            setMeasuredDimension(mVar.getMeasuredWidth(), mVar.getMeasuredHeight());
        }
    }
}
