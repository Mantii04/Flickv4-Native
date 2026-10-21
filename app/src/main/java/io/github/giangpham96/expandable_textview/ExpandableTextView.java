package io.github.giangpham96.expandable_textview;

import A.h;
import A.i;
import B4.ViewOnClickListenerC0038a;
import M5.g;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.text.DynamicLayout;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import h0.C0959b;
import i5.C1017a;
import java.util.Iterator;
import kotlin.jvm.internal.j;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.a;
import v5.w;

/* loaded from: classes2.dex */
public final class ExpandableTextView extends AppCompatTextView {

    /* renamed from: A, reason: collision with root package name */
    public static final /* synthetic */ int f16757A = 0;

    /* renamed from: q, reason: collision with root package name */
    public String f16758q;

    /* renamed from: r, reason: collision with root package name */
    public String f16759r;

    /* renamed from: s, reason: collision with root package name */
    public int f16760s;

    /* renamed from: t, reason: collision with root package name */
    public int f16761t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f16762u;

    /* renamed from: v, reason: collision with root package name */
    public int f16763v;

    /* renamed from: w, reason: collision with root package name */
    public ValueAnimator f16764w;

    /* renamed from: x, reason: collision with root package name */
    public SpannableString f16765x;

    /* renamed from: y, reason: collision with root package name */
    public StaticLayout f16766y;

    /* renamed from: z, reason: collision with root package name */
    public CharSequence f16767z;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ExpandableTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        j.checkNotNullParameter(context, "context");
    }

    public static /* synthetic */ void p(ExpandableTextView expandableTextView, boolean z6) {
        expandableTextView.o((expandableTextView.getMeasuredWidth() - expandableTextView.getCompoundPaddingStart()) - expandableTextView.getCompoundPaddingEnd(), z6);
    }

    public final boolean getCollapsed() {
        return this.f16762u;
    }

    public final String getExpandAction() {
        return this.f16759r;
    }

    public final int getExpandActionColor() {
        return this.f16761t;
    }

    public final boolean getExpanded() {
        return !this.f16762u;
    }

    public final int getLimitedMaxLines() {
        return this.f16760s;
    }

    public final String getOriginalText() {
        return this.f16758q;
    }

    public final StaticLayout n(int i2, int i7, CharSequence charSequence) {
        int coerceAtLeast = g.coerceAtLeast(i7, 0);
        StaticLayout build = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), getPaint(), coerceAtLeast).setIncludePad(false).setMaxLines(i2).setAlignment(Layout.Alignment.ALIGN_NORMAL).setEllipsize(TextUtils.TruncateAt.END).setLineSpacing(getLineSpacingExtra(), getLineSpacingMultiplier()).build();
        j.checkNotNullExpressionValue(build, "{\n            StaticLayo…       .build()\n        }");
        return build;
    }

    public final void o(int i2, boolean z6) {
        SpannableStringBuilder spannableStringBuilder;
        DynamicLayout dynamicLayout;
        DynamicLayout.Builder obtain;
        DynamicLayout.Builder alignment;
        DynamicLayout.Builder includePad;
        DynamicLayout.Builder lineSpacing;
        if (i2 <= 0) {
            return;
        }
        StaticLayout n7 = n(this.f16760s, i2, this.f16758q);
        if (z6) {
            this.f16766y = n(1, i2, this.f16765x);
        }
        CharSequence text = n7.getText();
        if (j.areEqual(text.toString(), this.f16758q)) {
            text = this.f16758q;
        } else {
            Iterator it = g.until(0, n7.getLineCount()).iterator();
            int i7 = 0;
            while (it.hasNext()) {
                i7 += (int) n7.getLineWidth(((w) it).nextInt());
            }
            float f3 = i7;
            StaticLayout staticLayout = this.f16766y;
            j.checkNotNull(staticLayout);
            CharSequence textWithoutCta = TextUtils.ellipsize(this.f16758q, getPaint(), f3 - staticLayout.getLineWidth(0), TextUtils.TruncateAt.END);
            j.checkNotNullExpressionValue(textWithoutCta, "textWithoutCta");
            int indexOf$default = StringsKt__StringsKt.indexOf$default(textWithoutCta, (char) 8230, 0, false, 6, (Object) null);
            if (j.areEqual(textWithoutCta, "")) {
                StaticLayout staticLayout2 = this.f16766y;
                j.checkNotNull(staticLayout2);
                text = staticLayout2.getText();
            } else if (indexOf$default != -1) {
                SpannableStringBuilder append = new SpannableStringBuilder().append(textWithoutCta);
                StaticLayout staticLayout3 = this.f16766y;
                j.checkNotNull(staticLayout3);
                SpannableStringBuilder span = append.replace(indexOf$default, indexOf$default + 1, staticLayout3.getText());
                j.checkNotNullExpressionValue(span, "span");
                int width = n7.getWidth();
                if (Build.VERSION.SDK_INT >= 28) {
                    obtain = DynamicLayout.Builder.obtain(span, getPaint(), width);
                    Layout.Alignment alignment2 = Layout.Alignment.ALIGN_NORMAL;
                    alignment = obtain.setAlignment(Layout.Alignment.ALIGN_NORMAL);
                    includePad = alignment.setIncludePad(false);
                    lineSpacing = includePad.setLineSpacing(getLineSpacingExtra(), getLineSpacingMultiplier());
                    dynamicLayout = lineSpacing.build();
                    spannableStringBuilder = span;
                } else {
                    spannableStringBuilder = span;
                    dynamicLayout = new DynamicLayout(spannableStringBuilder, spannableStringBuilder, getPaint(), width, Layout.Alignment.ALIGN_NORMAL, getLineSpacingMultiplier(), getLineSpacingExtra(), false);
                }
                j.checkNotNullExpressionValue(dynamicLayout, "if (Build.VERSION.SDK_IN…ngExtra, false)\n        }");
                StaticLayout staticLayout4 = this.f16766y;
                j.checkNotNull(staticLayout4);
                SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
                for (int indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) spannableStringBuilder2, staticLayout4.getText().toString(), 0, false, 6, (Object) null) - 1; indexOf$default2 >= 0 && dynamicLayout.getLineCount() > this.f16760s; indexOf$default2--) {
                    spannableStringBuilder2.delete(indexOf$default2, indexOf$default2 + 1);
                }
                text = spannableStringBuilder2;
            }
        }
        this.f16767z = text;
        if (!this.f16762u) {
            text = this.f16758q;
        }
        setText(text);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.f16764w;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i7) {
        ValueAnimator valueAnimator;
        int size = (View.MeasureSpec.getSize(i2) - getCompoundPaddingStart()) - getCompoundPaddingEnd();
        if (size == this.f16763v || ((valueAnimator = this.f16764w) != null && valueAnimator.isRunning())) {
            super.onMeasure(i2, i7);
            return;
        }
        this.f16763v = size;
        o(size, true);
        super.onMeasure(i2, i7);
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        super.setEllipsize(TextUtils.TruncateAt.END);
    }

    public final void setExpandAction(String value) {
        j.checkNotNullParameter(value, "value");
        this.f16759r = value;
        int length = String.valueOf((char) 8230).length();
        SpannableString spannableString = new SpannableString(i.k("… ", value));
        this.f16765x = spannableString;
        spannableString.setSpan(new ForegroundColorSpan(this.f16761t), length, this.f16765x.length(), 33);
        p(this, true);
    }

    public final void setExpandActionColor(int i2) {
        this.f16761t = i2;
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i2);
        int length = String.valueOf((char) 8230).length();
        SpannableString spannableString = this.f16765x;
        spannableString.setSpan(foregroundColorSpan, length, spannableString.length(), 33);
        p(this, true);
    }

    public final void setLimitedMaxLines(int i2) {
        if (getMaxLines() == -1 || i2 <= getMaxLines()) {
            this.f16760s = i2;
            p(this, false);
            return;
        }
        throw new IllegalStateException(a.trimIndent("\n                    maxLines (" + getMaxLines() + ") must be greater than or equal to limitedMaxLines (" + i2 + "). \n                    maxLines can be -1 if there is no upper limit for lineCount.\n                ").toString());
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i2) {
        int i7;
        if (i2 == -1 || (i7 = this.f16760s) <= i2) {
            super.setMaxLines(i2);
            p(this, false);
            return;
        }
        throw new IllegalStateException(a.trimIndent("\n                maxLines (" + i2 + ") must be greater than or equal to limitedMaxLines (" + i7 + "). \n                maxLines can be -1 if there is no upper limit for lineCount.\n            ").toString());
    }

    public final void setOriginalText(String value) {
        j.checkNotNullParameter(value, "value");
        this.f16758q = value;
        p(this, false);
    }

    public final void toggle() {
        if (j.areEqual(this.f16758q, this.f16767z)) {
            this.f16762u = !this.f16762u;
            return;
        }
        int height = getHeight();
        setText(this.f16762u ? this.f16758q : this.f16767z);
        measure(View.MeasureSpec.makeMeasureSpec(getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getHeight(), 0));
        int measuredHeight = getMeasuredHeight();
        ValueAnimator valueAnimator = this.f16764w;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        long coerceAtMost = g.coerceAtMost(Math.abs(measuredHeight - height) * 2, 300L);
        ValueAnimator ofInt = ValueAnimator.ofInt(height, measuredHeight);
        ofInt.setInterpolator(new C0959b());
        ofInt.setDuration(coerceAtMost);
        ofInt.addUpdateListener(new A3.a(this, 5));
        ofInt.addListener(new C1017a(this));
        ofInt.start();
        this.f16764w = ofInt;
    }

    public /* synthetic */ ExpandableTextView(Context context, AttributeSet attributeSet, int i2, int i7, kotlin.jvm.internal.g gVar) {
        this(context, (i7 & 2) != 0 ? null : attributeSet, (i7 & 4) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExpandableTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        j.checkNotNullParameter(context, "context");
        this.f16758q = "";
        this.f16759r = "";
        this.f16760s = 3;
        this.f16761t = h.getColor(context, android.R.color.holo_purple);
        this.f16762u = true;
        this.f16765x = new SpannableString("");
        setEllipsize(TextUtils.TruncateAt.END);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExpandableTextView);
        j.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…eable.ExpandableTextView)");
        String string = obtainStyledAttributes.getString(R.styleable.ExpandableTextView_expandAction);
        setExpandAction(string == null ? this.f16759r : string);
        setExpandActionColor(obtainStyledAttributes.getColor(R.styleable.ExpandableTextView_expandActionColor, this.f16761t));
        String string2 = obtainStyledAttributes.getString(R.styleable.ExpandableTextView_originalText);
        setOriginalText(string2 == null ? this.f16758q : string2);
        setLimitedMaxLines(obtainStyledAttributes.getInt(R.styleable.ExpandableTextView_limitedMaxLines, this.f16760s));
        if (getMaxLines() != -1 && this.f16760s > getMaxLines()) {
            throw new IllegalStateException(a.trimIndent("\n                maxLines (" + getMaxLines() + ") must be greater than or equal to limitedMaxLines (" + this.f16760s + "). \n                maxLines can be -1 if there is no upper limit for lineCount.\n            ").toString());
        }
        obtainStyledAttributes.recycle();
        setOnClickListener(new ViewOnClickListenerC0038a(this, 9));
    }
}
