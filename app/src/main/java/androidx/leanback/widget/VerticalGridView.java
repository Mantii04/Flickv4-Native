package androidx.leanback.widget;

import M.AbstractC0181p0;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class VerticalGridView extends AbstractC0529t {
    public VerticalGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @SuppressLint({"CustomViewStyleable"})
    public void initAttributes(Context context, AttributeSet attributeSet) {
        d0(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.lbVerticalGridView);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, R.styleable.lbVerticalGridView, attributeSet, obtainStyledAttributes, 0, 0);
        setColumnWidth(obtainStyledAttributes);
        setNumColumns(obtainStyledAttributes.getInt(R.styleable.lbVerticalGridView_numberOfColumns, 1));
        obtainStyledAttributes.recycle();
    }

    public void setColumnWidth(TypedArray typedArray) {
        if (typedArray.peekValue(R.styleable.lbVerticalGridView_columnWidth) != null) {
            setColumnWidth(typedArray.getLayoutDimension(R.styleable.lbVerticalGridView_columnWidth, 0));
        }
    }

    public void setNumColumns(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        if (i2 < 0) {
            gridLayoutManager.getClass();
            throw new IllegalArgumentException();
        }
        gridLayoutManager.f6519V = i2;
        requestLayout();
    }

    public VerticalGridView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6904T0.setOrientation(1);
        initAttributes(context, attributeSet);
    }

    public void setColumnWidth(int i2) {
        this.f6904T0.P(i2);
        requestLayout();
    }
}
