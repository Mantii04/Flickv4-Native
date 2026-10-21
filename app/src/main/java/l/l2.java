package l;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import e.AbstractC0822a;

/* loaded from: classes.dex */
public final class l2 extends AbstractC0822a {

    /* renamed from: b, reason: collision with root package name */
    public int f17947b;

    public l2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17947b = 0;
    }

    public l2(int i2, int i7) {
        super(i2, i7);
        this.f17947b = 0;
        this.f13686a = 8388627;
    }

    public l2(l2 l2Var) {
        super((AbstractC0822a) l2Var);
        this.f17947b = 0;
        this.f17947b = l2Var.f17947b;
    }

    public l2(AbstractC0822a abstractC0822a) {
        super(abstractC0822a);
        this.f17947b = 0;
    }

    public l2(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f17947b = 0;
        ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
    }

    public l2(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f17947b = 0;
    }
}
