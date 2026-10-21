package androidx.leanback.widget;

import M.AbstractC0181p0;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* loaded from: classes.dex */
public class ImageCardView extends AbstractC0511k {

    /* renamed from: B, reason: collision with root package name */
    public final ImageView f6569B;

    /* renamed from: C, reason: collision with root package name */
    public final ViewGroup f6570C;

    /* renamed from: D, reason: collision with root package name */
    public final TextView f6571D;

    /* renamed from: E, reason: collision with root package name */
    public final TextView f6572E;

    /* renamed from: F, reason: collision with root package name */
    public final ImageView f6573F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f6574G;

    /* renamed from: H, reason: collision with root package name */
    public final ObjectAnimator f6575H;

    public ImageCardView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i7 = androidx.leanback.R.style.Widget_Leanback_ImageCardView;
        setFocusable(true);
        setFocusableInTouchMode(true);
        LayoutInflater from = LayoutInflater.from(getContext());
        from.inflate(androidx.leanback.R.layout.lb_image_card_view, this);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, androidx.leanback.R.styleable.lbImageCardView, i2, i7);
        AbstractC0181p0.saveAttributeDataForStyleable(this, getContext(), androidx.leanback.R.styleable.lbImageCardView, attributeSet, obtainStyledAttributes, i2, i7);
        int i8 = obtainStyledAttributes.getInt(androidx.leanback.R.styleable.lbImageCardView_lbImageCardViewType, 0);
        boolean z6 = i8 == 0;
        boolean z7 = (i8 & 1) == 1;
        boolean z8 = (i8 & 2) == 2;
        boolean z9 = (i8 & 4) == 4;
        boolean z10 = !z9 && (i8 & 8) == 8;
        ImageView imageView = (ImageView) findViewById(androidx.leanback.R.id.main_image);
        this.f6569B = imageView;
        if (imageView.getDrawable() == null) {
            this.f6569B.setVisibility(4);
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f6569B, "alpha", 1.0f);
        this.f6575H = ofFloat;
        ofFloat.setDuration(this.f6569B.getResources().getInteger(android.R.integer.config_shortAnimTime));
        ViewGroup viewGroup = (ViewGroup) findViewById(androidx.leanback.R.id.info_field);
        this.f6570C = viewGroup;
        if (z6) {
            removeView(viewGroup);
            obtainStyledAttributes.recycle();
            return;
        }
        if (z7) {
            TextView textView = (TextView) from.inflate(androidx.leanback.R.layout.lb_image_card_view_themed_title, viewGroup, false);
            this.f6571D = textView;
            this.f6570C.addView(textView);
        }
        if (z8) {
            TextView textView2 = (TextView) from.inflate(androidx.leanback.R.layout.lb_image_card_view_themed_content, this.f6570C, false);
            this.f6572E = textView2;
            this.f6570C.addView(textView2);
        }
        if (z9 || z10) {
            ImageView imageView2 = (ImageView) from.inflate(z10 ? androidx.leanback.R.layout.lb_image_card_view_themed_badge_left : androidx.leanback.R.layout.lb_image_card_view_themed_badge_right, this.f6570C, false);
            this.f6573F = imageView2;
            this.f6570C.addView(imageView2);
        }
        if (z7 && !z8 && this.f6573F != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f6571D.getLayoutParams();
            if (z10) {
                layoutParams.addRule(17, this.f6573F.getId());
            } else {
                layoutParams.addRule(16, this.f6573F.getId());
            }
            this.f6571D.setLayoutParams(layoutParams);
        }
        if (z8) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f6572E.getLayoutParams();
            if (!z7) {
                layoutParams2.addRule(10);
            }
            if (z10) {
                layoutParams2.removeRule(16);
                layoutParams2.removeRule(20);
                layoutParams2.addRule(17, this.f6573F.getId());
            }
            this.f6572E.setLayoutParams(layoutParams2);
        }
        ImageView imageView3 = this.f6573F;
        if (imageView3 != null) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) imageView3.getLayoutParams();
            if (z8) {
                layoutParams3.addRule(8, this.f6572E.getId());
            } else if (z7) {
                layoutParams3.addRule(8, this.f6571D.getId());
            }
            this.f6573F.setLayoutParams(layoutParams3);
        }
        Drawable drawable = obtainStyledAttributes.getDrawable(androidx.leanback.R.styleable.lbImageCardView_infoAreaBackground);
        if (drawable != null) {
            setInfoAreaBackground(drawable);
        }
        ImageView imageView4 = this.f6573F;
        if (imageView4 != null && imageView4.getDrawable() == null) {
            this.f6573F.setVisibility(8);
        }
        obtainStyledAttributes.recycle();
    }

    public Drawable getBadgeImage() {
        ImageView imageView = this.f6573F;
        if (imageView == null) {
            return null;
        }
        return imageView.getDrawable();
    }

    public CharSequence getContentText() {
        TextView textView = this.f6572E;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    public Drawable getInfoAreaBackground() {
        ViewGroup viewGroup = this.f6570C;
        if (viewGroup != null) {
            return viewGroup.getBackground();
        }
        return null;
    }

    public Drawable getMainImage() {
        ImageView imageView = this.f6569B;
        if (imageView == null) {
            return null;
        }
        return imageView.getDrawable();
    }

    public final ImageView getMainImageView() {
        return this.f6569B;
    }

    public CharSequence getTitleText() {
        TextView textView = this.f6571D;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f6574G = true;
        if (this.f6569B.getAlpha() == 0.0f) {
            this.f6569B.setAlpha(0.0f);
            if (this.f6574G) {
                this.f6575H.start();
            }
        }
    }

    @Override // androidx.leanback.widget.AbstractC0511k, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f6574G = false;
        this.f6575H.cancel();
        this.f6569B.setAlpha(1.0f);
        super.onDetachedFromWindow();
    }

    public void setBadgeImage(Drawable drawable) {
        ImageView imageView = this.f6573F;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        if (drawable != null) {
            this.f6573F.setVisibility(0);
        } else {
            this.f6573F.setVisibility(8);
        }
    }

    public void setContentText(CharSequence charSequence) {
        TextView textView = this.f6572E;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    public void setInfoAreaBackground(Drawable drawable) {
        ViewGroup viewGroup = this.f6570C;
        if (viewGroup != null) {
            viewGroup.setBackground(drawable);
        }
    }

    public void setInfoAreaBackgroundColor(int i2) {
        ViewGroup viewGroup = this.f6570C;
        if (viewGroup != null) {
            viewGroup.setBackgroundColor(i2);
        }
    }

    public void setMainImage(Drawable drawable) {
        setMainImage(drawable, true);
    }

    public void setMainImageAdjustViewBounds(boolean z6) {
        ImageView imageView = this.f6569B;
        if (imageView != null) {
            imageView.setAdjustViewBounds(z6);
        }
    }

    public void setMainImageScaleType(ImageView.ScaleType scaleType) {
        ImageView imageView = this.f6569B;
        if (imageView != null) {
            imageView.setScaleType(scaleType);
        }
    }

    public void setTitleText(CharSequence charSequence) {
        TextView textView = this.f6571D;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    public void setMainImage(Drawable drawable, boolean z6) {
        ImageView imageView = this.f6569B;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            this.f6575H.cancel();
            this.f6569B.setAlpha(1.0f);
            this.f6569B.setVisibility(4);
            return;
        }
        this.f6569B.setVisibility(0);
        if (!z6) {
            this.f6575H.cancel();
            this.f6569B.setAlpha(1.0f);
        } else {
            this.f6569B.setAlpha(0.0f);
            if (this.f6574G) {
                this.f6575H.start();
            }
        }
    }

    public ImageCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.leanback.R.attr.imageCardViewStyle);
    }
}
