package androidx.leanback.widget;

import android.graphics.Paint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class K0 extends C0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f6589a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f6590b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6591c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f6592d;

    public K0() {
        this(androidx.leanback.R.layout.lb_row_header);
    }

    public static float getFontDescent(TextView textView, Paint paint) {
        if (paint.getTextSize() != textView.getTextSize()) {
            paint.setTextSize(textView.getTextSize());
        }
        if (paint.getTypeface() != textView.getTypeface()) {
            paint.setTypeface(textView.getTypeface());
        }
        return paint.descent();
    }

    public int getSpaceUnderBaseline(J0 j02) {
        int paddingBottom = j02.f6460a.getPaddingBottom();
        View view = j02.f6460a;
        return view instanceof TextView ? paddingBottom + ((int) getFontDescent((TextView) view, this.f6590b)) : paddingBottom;
    }

    @Override // androidx.leanback.widget.C0
    public void onBindViewHolder(A0 a02, Object obj) {
        P headerItem = obj == null ? null : ((H0) obj).getHeaderItem();
        J0 j02 = (J0) a02;
        if (headerItem == null) {
            RowHeaderView rowHeaderView = j02.f6584d;
            if (rowHeaderView != null) {
                rowHeaderView.setText((CharSequence) null);
            }
            TextView textView = j02.f6585e;
            if (textView != null) {
                textView.setText((CharSequence) null);
            }
            a02.f6460a.setContentDescription(null);
            if (this.f6591c) {
                a02.f6460a.setVisibility(8);
                return;
            }
            return;
        }
        RowHeaderView rowHeaderView2 = j02.f6584d;
        if (rowHeaderView2 != null) {
            rowHeaderView2.setText(headerItem.getName());
        }
        TextView textView2 = j02.f6585e;
        if (textView2 != null) {
            if (TextUtils.isEmpty(headerItem.getDescription())) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(0);
            }
            textView2.setText(headerItem.getDescription());
        }
        a02.f6460a.setContentDescription(headerItem.getContentDescription());
        a02.f6460a.setVisibility(0);
    }

    @Override // androidx.leanback.widget.C0
    public A0 onCreateViewHolder(ViewGroup viewGroup) {
        J0 j02 = new J0(LayoutInflater.from(viewGroup.getContext()).inflate(this.f6589a, viewGroup, false));
        if (this.f6592d) {
            setSelectLevel(j02, 0.0f);
        }
        return j02;
    }

    public void onSelectLevelChanged(J0 j02) {
        if (this.f6592d) {
            View view = j02.f6460a;
            float f3 = j02.f6583c;
            view.setAlpha(((1.0f - f3) * j02.f6582b) + f3);
        }
    }

    @Override // androidx.leanback.widget.C0
    public void onUnbindViewHolder(A0 a02) {
        J0 j02 = (J0) a02;
        RowHeaderView rowHeaderView = j02.f6584d;
        if (rowHeaderView != null) {
            rowHeaderView.setText((CharSequence) null);
        }
        TextView textView = j02.f6585e;
        if (textView != null) {
            textView.setText((CharSequence) null);
        }
        if (this.f6592d) {
            setSelectLevel(j02, 0.0f);
        }
    }

    public void setNullItemVisibilityGone(boolean z6) {
        this.f6591c = z6;
    }

    public final void setSelectLevel(J0 j02, float f3) {
        j02.f6582b = f3;
        onSelectLevelChanged(j02);
    }

    public K0(int i2) {
        this(i2, true);
    }

    public K0(int i2, boolean z6) {
        this.f6590b = new Paint(1);
        this.f6589a = i2;
        this.f6592d = z6;
    }
}
