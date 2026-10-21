package androidx.leanback.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

/* loaded from: classes.dex */
public class TitleView extends FrameLayout {

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f6743b;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f6744e;

    /* renamed from: f, reason: collision with root package name */
    public final SearchOrbView f6745f;

    /* renamed from: j, reason: collision with root package name */
    public final int f6746j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6747m;

    /* renamed from: n, reason: collision with root package name */
    public final x1 f6748n;

    public TitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.leanback.R.attr.browseTitleViewStyle);
    }

    public Drawable getBadgeDrawable() {
        return this.f6743b.getDrawable();
    }

    public e1 getSearchAffordanceColors() {
        return this.f6745f.getOrbColors();
    }

    public View getSearchAffordanceView() {
        return this.f6745f;
    }

    public CharSequence getTitle() {
        return this.f6744e.getText();
    }

    public y1 getTitleViewAdapter() {
        return this.f6748n;
    }

    public void setBadgeDrawable(Drawable drawable) {
        this.f6743b.setImageDrawable(drawable);
        ImageView imageView = this.f6743b;
        Drawable drawable2 = imageView.getDrawable();
        TextView textView = this.f6744e;
        if (drawable2 != null) {
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(0);
        }
    }

    public void setOnSearchClickedListener(View.OnClickListener onClickListener) {
        this.f6747m = onClickListener != null;
        SearchOrbView searchOrbView = this.f6745f;
        searchOrbView.setOnOrbClickedListener(onClickListener);
        searchOrbView.setVisibility((this.f6747m && (this.f6746j & 4) == 4) ? 0 : 4);
    }

    public void setSearchAffordanceColors(e1 e1Var) {
        this.f6745f.setOrbColors(e1Var);
    }

    public void setTitle(CharSequence charSequence) {
        this.f6744e.setText(charSequence);
        ImageView imageView = this.f6743b;
        Drawable drawable = imageView.getDrawable();
        TextView textView = this.f6744e;
        if (drawable != null) {
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(0);
        }
    }

    public TitleView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6746j = 6;
        this.f6747m = false;
        this.f6748n = new x1();
        View inflate = LayoutInflater.from(context).inflate(androidx.leanback.R.layout.lb_title_view, this);
        this.f6743b = (ImageView) inflate.findViewById(androidx.leanback.R.id.title_badge);
        this.f6744e = (TextView) inflate.findViewById(androidx.leanback.R.id.title_text);
        this.f6745f = (SearchOrbView) inflate.findViewById(androidx.leanback.R.id.title_orb);
        setClipToPadding(false);
        setClipChildren(false);
    }
}
