package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import u.C1658a;

/* loaded from: classes.dex */
public final class a extends c {

    /* renamed from: q, reason: collision with root package name */
    public int f5313q;

    /* renamed from: r, reason: collision with root package name */
    public int f5314r;

    /* renamed from: s, reason: collision with root package name */
    public C1658a f5315s;

    public a(Context context) {
        super(context);
        setVisibility(8);
    }

    public boolean getAllowsGoneWidget() {
        return this.f5315s.getAllowsGoneWidget();
    }

    public int getMargin() {
        return this.f5315s.getMargin();
    }

    public int getType() {
        return this.f5313q;
    }

    @Override // androidx.constraintlayout.widget.c
    public void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        this.f5315s = new C1658a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f5315s.setAllowsGoneWidget(obtainStyledAttributes.getBoolean(index, true));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.f5315s.setMargin(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f5326j = this.f5315s;
        validateParams();
    }

    @Override // androidx.constraintlayout.widget.c
    public void resolveRtl(u.e eVar, boolean z6) {
        int i2 = this.f5313q;
        this.f5314r = i2;
        if (z6) {
            if (i2 == 5) {
                this.f5314r = 1;
            } else if (i2 == 6) {
                this.f5314r = 0;
            }
        } else if (i2 == 5) {
            this.f5314r = 0;
        } else if (i2 == 6) {
            this.f5314r = 1;
        }
        if (eVar instanceof C1658a) {
            ((C1658a) eVar).setBarrierType(this.f5314r);
        }
    }

    public void setAllowsGoneWidget(boolean z6) {
        this.f5315s.setAllowsGoneWidget(z6);
    }

    public void setDpMargin(int i2) {
        this.f5315s.setMargin((int) ((i2 * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i2) {
        this.f5315s.setMargin(i2);
    }

    public void setType(int i2) {
        this.f5313q = i2;
    }
}
