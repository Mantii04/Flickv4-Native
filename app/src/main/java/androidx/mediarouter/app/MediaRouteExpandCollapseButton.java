package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.mediarouter.R;

/* loaded from: classes.dex */
class MediaRouteExpandCollapseButton extends l.N {

    /* renamed from: j, reason: collision with root package name */
    public final AnimationDrawable f7705j;

    /* renamed from: m, reason: collision with root package name */
    public final AnimationDrawable f7706m;

    /* renamed from: n, reason: collision with root package name */
    public final String f7707n;

    /* renamed from: p, reason: collision with root package name */
    public final String f7708p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f7709q;

    /* renamed from: r, reason: collision with root package name */
    public View.OnClickListener f7710r;

    public MediaRouteExpandCollapseButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f7710r = onClickListener;
    }

    public MediaRouteExpandCollapseButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        AnimationDrawable animationDrawable = (AnimationDrawable) A.h.getDrawable(context, R.drawable.mr_group_expand);
        this.f7705j = animationDrawable;
        AnimationDrawable animationDrawable2 = (AnimationDrawable) A.h.getDrawable(context, R.drawable.mr_group_collapse);
        this.f7706m = animationDrawable2;
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(o0.b(context, i2), PorterDuff.Mode.SRC_IN);
        animationDrawable.setColorFilter(porterDuffColorFilter);
        animationDrawable2.setColorFilter(porterDuffColorFilter);
        String string = context.getString(R.string.mr_controller_expand_group);
        this.f7707n = string;
        this.f7708p = context.getString(R.string.mr_controller_collapse_group);
        setImageDrawable(animationDrawable.getFrame(0));
        setContentDescription(string);
        super.setOnClickListener(new n0(this));
    }
}
