package androidx.leanback.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.widget.TextView;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
class ResizingTextView extends TextView {

    /* renamed from: b, reason: collision with root package name */
    public final int f6657b;

    /* renamed from: e, reason: collision with root package name */
    public final int f6658e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f6659f;

    /* renamed from: j, reason: collision with root package name */
    public final int f6660j;

    /* renamed from: m, reason: collision with root package name */
    public final int f6661m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f6662n;

    /* renamed from: p, reason: collision with root package name */
    public int f6663p;

    /* renamed from: q, reason: collision with root package name */
    public float f6664q;

    /* renamed from: r, reason: collision with root package name */
    public int f6665r;

    /* renamed from: s, reason: collision with root package name */
    public int f6666s;

    @SuppressLint({"CustomViewStyleable"})
    public ResizingTextView(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2);
        this.f6662n = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.leanback.R.styleable.lbResizingTextView, i2, i7);
        try {
            this.f6657b = obtainStyledAttributes.getInt(androidx.leanback.R.styleable.lbResizingTextView_resizeTrigger, 1);
            this.f6658e = obtainStyledAttributes.getDimensionPixelSize(androidx.leanback.R.styleable.lbResizingTextView_resizedTextSize, -1);
            this.f6659f = obtainStyledAttributes.getBoolean(androidx.leanback.R.styleable.lbResizingTextView_maintainLineSpacing, false);
            this.f6660j = obtainStyledAttributes.getDimensionPixelOffset(androidx.leanback.R.styleable.lbResizingTextView_resizedPaddingAdjustmentTop, 0);
            this.f6661m = obtainStyledAttributes.getDimensionPixelOffset(androidx.leanback.R.styleable.lbResizingTextView_resizedPaddingAdjustmentBottom, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final void a(int i2, int i7) {
        if (isPaddingRelative()) {
            setPaddingRelative(getPaddingStart(), i2, getPaddingEnd(), i7);
        } else {
            setPadding(getPaddingLeft(), i2, getPaddingRight(), i7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009d  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.ResizingTextView.onMeasure(int, int):void");
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(S.A.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public ResizingTextView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ResizingTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.textViewStyle);
    }
}
